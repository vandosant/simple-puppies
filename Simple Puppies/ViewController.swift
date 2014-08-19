//
//  ViewController.swift
//  Simple Puppies
//
//  Created by Scott Skender on 8/18/14.
//  Copyright (c) 2014 Scott Skender. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet var puppyLabel: UILabel!
    
    var imageName = "puppy1.jpg"
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        self.puppyLabel.text = imageName
        self.imageView.image = UIImage(named: imageName)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didTapToggleButton(sender: AnyObject) {
        if imageName == "puppy1.jpg" {
            imageName = "puppy2.jpg"
        } else if imageName == "puppy2.jpg" {
            imageName = "puppy3.jpg"
        } else if imageName == "puppy3.jpg" {
            imageName = "puppy1.jpg"
        }
        self.imageView.image = UIImage(named: imageName)
    }

}

