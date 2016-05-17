//
//  tabbarVC.swift
//  ProjectSE
//
//  Created by 3arthzneiz on 5/17/2559 BE.
//  Copyright © 2559 3arthzneiz. All rights reserved.
//

import UIKit

class tabbarVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.tintColor = .whiteColor()
        self.tabBar.barTintColor = UIColor(red: 60.0/255.0, green: 200.0/255.0, blue: 100.0/255.0, alpha: 1)        // Do any additional setup after loading the view.
        self.tabBar.translucent = false
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
