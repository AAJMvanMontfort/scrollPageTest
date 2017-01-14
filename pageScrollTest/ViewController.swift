//
//  ViewController.swift
//  pageScrollTest
//
//  Created by AAJM van Montfort on 14-01-17.
//  Copyright © 2017 AAJM van Montfort. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIGestureRecognizerDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    var images = [UIImageView]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidAppear(_ animated: Bool) {
        var contentSize: CGFloat = 0.0
        let scrollWidth = scrollView.frame.size.width
        
        for x in 0...2 {
            let image = UIImage(named: "icon\(x)")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            var newX: CGFloat = 0.0
            newX = scrollWidth / 2 + scrollWidth * CGFloat(x)
            contentSize += newX
            
            scrollView.addSubview(imageView)
            imageView.frame = CGRect(x: newX - 75, y: scrollView.frame.midY - 75, width: 150, height: 150)
            
        }
        
        scrollView.contentSize = CGSize(width: contentSize, height: view.frame.size.height)
        view.addGestureRecognizer(scrollView.panGestureRecognizer)
    
    }    
}

