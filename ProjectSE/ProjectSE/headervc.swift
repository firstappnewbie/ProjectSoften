//
//  headervc.swift
//
//  Created by 3arthzneiz on 5/6/2559 BE.
//  Copyright © 2559 3arthzneiz. All rights reserved.
//

import UIKit

class headervc: UICollectionReusableView {
    @IBOutlet weak var avaImg: UIImageView!
        
    @IBOutlet weak var Fullname: UILabel!
    
  
    @IBOutlet weak var webtxt: UITextView!
    
    @IBOutlet weak var bioLbl: UITextView!
    
    @IBOutlet weak var posts: UILabel!
    
    @IBOutlet weak var pictures: UILabel!
    
    
    @IBOutlet weak var followings: UILabel!
    
    
    @IBOutlet weak var button: UIButton!


    override func awakeFromNib() {
        //let width = UIScreen.mainScreen().bounds.width
        //avaImg.frame = CGRectMake(width / 16, width / 16, width / 4, width / 4)
        avaImg.layer.cornerRadius = avaImg.frame.size.width / 2
        avaImg.clipsToBounds = true
    }
}