//
//  uploadvc.swift
//  ProjectSE
//
//  Created by 3arthzneiz on 5/17/2559 BE.
//  Copyright © 2559 3arthzneiz. All rights reserved.
//

import UIKit
import Parse

class uploadvc: UIViewController, UIImagePickerControllerDelegate , UINavigationControllerDelegate{

    @IBOutlet weak var picImg: UIImageView!
    
    @IBOutlet weak var ttext: UITextView!
    
    @IBOutlet weak var Buttonupload: UIButton!

    
    
    override func viewDidLoad() {
            super.viewDidLoad()
        self.navigationItem.title = " Write a review "
        Buttonupload.enabled = false
        Buttonupload.backgroundColor = .lightGrayColor()
        
        // Do any additional setup after loading the view.
        let hideTap = UITapGestureRecognizer(target: self, action: "hidekeyboard")
        hideTap.numberOfTapsRequired = 1
        self.view.userInteractionEnabled =  true
        self.view.addGestureRecognizer(hideTap)
        
        let picTap = UITapGestureRecognizer(target: self, action: "selectImg")
        hideTap.numberOfTapsRequired = 1
        self.view.userInteractionEnabled =  true
        self.view.addGestureRecognizer(picTap)
    }
    
        func hidekeyboard(){
        self.view.endEditing(true)
    }
    func selectImg(){
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .PhotoLibrary
        picker.allowsEditing = true
        presentViewController(picker, animated: true, completion: nil)
        
    }
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        picImg.image = info[UIImagePickerControllerEditedImage] as?  UIImage
        self.dismissViewControllerAnimated(true, completion: nil)
        
        Buttonupload.enabled = true
        Buttonupload.backgroundColor = UIColor(red: 52.0/255.0, green: 169.0/255.0, blue: 255.0/255.0, alpha: 1)
        let zoomTap = UITapGestureRecognizer(target: self, action: "zoomImg")
        zoomTap.numberOfTapsRequired = 1
        picImg.userInteractionEnabled = true
        picImg.addGestureRecognizer(zoomTap)
        
    }
    
    func zoomImg(){
        let unzoomed = CGRectMake(15,15, self.view.frame.size.width / 4.5, self.view.frame.size.width / 4.5)
        let zoomed = CGRectMake(0, self.view.center.y - self.view.center.x - self.tabBarController!.tabBar.frame.size.height * 1.5, self.view.frame.size.width, self.view.frame.size.width)
        if picImg.frame == unzoomed
        {
            UIView.animateWithDuration(0.3, animations: { () -> Void in
                self.picImg.frame = zoomed
                self.view.backgroundColor = .blackColor()
                self.ttext.alpha = 0
                self.Buttonupload.alpha = 0
                
            })
        }else{
            
            UIView.animateWithDuration(0.3, animations: { () -> Void in
                self.picImg.frame = unzoomed
                self.view.backgroundColor = .whiteColor()
                self.ttext.alpha = 1
                self.Buttonupload.alpha = 1
                
            })
        }
    }
    
    
    @IBAction func click_button(sender: AnyObject) {
        let object = PFObject(className: "posts")
        object["username"] = PFUser.currentUser()!.username
        object["ava"] = PFUser.currentUser()!.valueForKey("ava") as! PFFile
        object["uuid"] = "\(PFUser.currentUser()!.username) \(NSUUID().UUIDString)"
        
        if ttext.text.isEmpty{
            object["title"] = ""
        }else{
            object["title"] = ttext.text.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
        }
        let imageData = UIImageJPEGRepresentation(picImg.image!,0.5)
        let imageFile = PFFile(name: "post.jpg", data: imageData!)
        object["pic"] = imageFile
        
        
        object.saveInBackgroundWithBlock { (success:Bool, error:NSError?) -> Void in
            
            if error == nil {
                
                NSNotificationCenter.defaultCenter().postNotificationName("uploaded", object: nil)
                self.tabBarController!.selectedIndex = 0
            }
        }
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
