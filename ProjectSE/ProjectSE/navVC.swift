//
//  navVC.swift
//  ProjectSE
//
//  Created by 3arthzneiz on 5/17/2559 BE.
//  Copyright © 2559 3arthzneiz. All rights reserved.
//

import UIKit

class navVC: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
        self.navigationBar.tintColor = .whiteColor()
        self.navigationBar.barTintColor = UIColor(red: 46.0/255.0, green: 179.0/255.0, blue: 90.0/255.0, alpha: 1)
        self.navigationBar.translucent = false
        
    }

    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
