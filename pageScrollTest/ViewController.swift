//
//  ViewController.swift
//  pageScrollTest
//
//  Created by AAJM van Montfort on 14-01-17.
//  Copyright © 2017 AAJM van Montfort. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var contentSize: CGFloat = 0.0
        
        for x in 0...2 {
            let image = UIImage(named: "icon\(x)")
            let imageView = UIImageView(image: image)
            
            var newX: CGFloat = 0.0
            newX = view.frame.midX + (view.frame.size.width * CGFloat(x))
            contentSize += newX
            
            scrollView.addSubview(imageView)
            imageView.frame = CGRect(x: newX - 75, y: view.frame.midY - 75, width: 150, height: 150)
            
        }
        
        scrollView.contentSize = CGSize(width: contentSize, height: view.frame.size.height)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

