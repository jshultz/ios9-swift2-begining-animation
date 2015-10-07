//
//  ViewController.swift
//  begining-animations
//
//  Created by Jason Shultz on 10/6/15.
//  Copyright © 2015 HashRocket. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var filename:String = "Camel_3-1.png"

    @IBOutlet weak var camelImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func updateImage(sender: AnyObject) {
        
        filename = filename == "Camel_3-1.png" ? "Camel_3-2.png" : "Camel_3-1.png"
        
        
        camelImage.image = UIImage(named: filename)
    }
    
    // begin animating the image in from the left.
    
    override func viewDidLayoutSubviews() {
        camelImage.center = CGPointMake(camelImage.center.x - 400, camelImage.center.y)
    }
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(1) { () -> Void in
            self.camelImage.center = CGPointMake(self.camelImage.center.x + 400, self.camelImage.center.y)
        }
    }
    
    // end animating the image in from the left.

}

