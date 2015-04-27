//
//  PageItemController.swift
//  WwdcMos
//
//  Created by Mos on 22/04/2015.
//  Copyright (c) 2015 Mos , inc. All rights reserved.
//

import UIKit

class PageItemController : UIViewController{

    //MARK : - Variables

    var itemIndex:Int = 0
    var imageName:String = "" {
        
        didSet {
            
            if let imageView = contentImageView {
                imageView.image = UIImage(named: imageName)
            }
            
        }
    }
    
    var pageIndic:String = ""
    var contenttext:String = ""
    
    @IBOutlet weak var contentImageView: UIImageView!
    @IBOutlet weak var contentTextView: UITextView!
    @IBOutlet weak var navigationBar: UINavigationItem!
   
    @IBOutlet weak var labelPage: UILabel!
   
    //MARK : - view lifeCycles
    override func viewDidLoad() {
        super.viewDidLoad()
        contentImageView!.image = UIImage(named: imageName)
        //navigationBar.title = String(itemIndex+1)+"/"+String(3)
        labelPage.text = "Page "+String(itemIndex+1)+"/"+String(3)
        contentTextView.text = contenttext
      
    }
    
    override func viewWillAppear(animated: Bool) {
        let font = UIFont(name: "Avenir-Light", size: 13)
        contentTextView.font = font
        labelPage.font = font

    }
}
