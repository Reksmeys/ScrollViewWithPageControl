
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
        
        for image in 0...7 {
            let imageToDisplay = UIImage(named: "1.png")
            let imageView = UIImageView(image: imageToDisplay)
            let imageView1 = UIImageView(image: UIImage(named: "2.png"))
            
            let labelOne = UILabel(frame: CGRect(x: 20, y: 20, width: 100, height: 100))
            let labelTwo = UILabel(frame: CGRect(x: 20, y: 20, width: 100, height: 100))
            labelOne.text = "label ONE \(image)"
            labelTwo.text = "Label Two"
            let xCordinate = view.frame.maxX + view.frame.width * CGFloat(image)
            contentWidth += view.frame.width
         
            
           // scrollView.addSubview(labelOne)
            if image == 1 {
                scrollView.addSubview(labelTwo)
            }else if image == 2 {
                scrollView.addSubview(imageView1)
            }else if image == 3 {
                scrollView.addSubview(imageView)
            }
            
            
            
            
            
            //if don't have frame show only first page of page control
            labelTwo.frame = CGRect(x: xCordinate - 250, y: (view.frame.height / 2), width: 100, height: 100)
            imageView.frame = CGRect(x: xCordinate - 250, y: (view.frame.height / 2) - 50, width: 100, height: 100)
            imageView1.frame = CGRect(x: xCordinate - 250, y: (view.frame.height / 2) - 50, width: 100, height: 100)
        }
        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.height)
      
        
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
  
        print(scrollView.contentOffset)
        pageControl.currentPage = Int(scrollView.contentOffset.x / CGFloat(414))
    
    }
   


}









