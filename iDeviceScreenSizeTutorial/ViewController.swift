//
//  ViewController.swift
//  iDeviceScreenSizeTutorial
//
//  Created by Forrest Collins on 12/3/15.
//  Copyright © 2015 Forrest Collins. All rights reserved.
//

// Purpose: change outlets according to iDevice screen size.
// Run the program on all the different iPhone sizes (4s, 5, 5s, etc.)
// This is useful if you want to modify outlets based on screen sizes
// when developing for multiple screen sizes.

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // these variables are the height values of the
        // iPhone screens in points
        // Source: http://www.paintcodeapp.com/news/ultimate-guide-to-iphone-resolutions
        
        let iPhone4ScreenSize: CGFloat = 480
        let iPhone5ScreenSize: CGFloat = 568
        let iPhone6ScreenSize: CGFloat = 667
        let iPhone6PlusScreenSize: CGFloat = 736
        
        let screenSize = UIScreen.mainScreen().bounds.height
        
        // change myLabel text according to iDevice screen size
        if screenSize == iPhone4ScreenSize {
            myLabel.text = "iPhone 4"
        } else if screenSize == iPhone5ScreenSize {
            myLabel.text = "iPhone 5"
        } else if screenSize == iPhone6ScreenSize {
            myLabel.text = "iPhone 6"
        } else if screenSize == iPhone6PlusScreenSize {
            myLabel.text = "iPhone 6 Plus"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

