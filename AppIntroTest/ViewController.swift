
//  ViewController.swift
//  AppIntroTest
//
//  Created by Raksmey on 12/17/17.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate{
    var contentWidth: CGFloat = 0.0

    @IBOutlet weak var scrollView: UIScrollView!

  
    @IBOutlet weak var pageControl: UIPageControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.scrollView.delegate = self
        for image in 0...2 {
            let imageToDisplay = UIImage(named: "\(image).png")
            let imageView = UIImageView(image: imageToDisplay)
            let xCordinate = view.frame.maxX + view.frame.width * CGFloat(image)
            contentWidth += view.frame.width
            
            scrollView.addSubview(imageView)
            imageView.frame = CGRect(x: xCordinate - 250, y: (view.frame.height / 2) - 50, width: 100, height: 100)
        }
        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.height)
        print("hi")
        
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
  
        print(scrollView.contentOffset)
        pageControl.currentPage = Int(scrollView.contentOffset.x / CGFloat(414))
    
    }
   


}









