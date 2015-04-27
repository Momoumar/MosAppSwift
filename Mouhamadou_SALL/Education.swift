//
//  Education.swift
//  WwdcMos
//
//  Created by Mos on 25/04/2015.
//  Copyright (c) 2015 Mos , inc. All rights reserved.
//

import UIKit

class Education : UIViewController{
    
    //MARK : - Outlet
    @IBOutlet weak var unisTextView: UITextView!
    @IBOutlet weak var unisImage: UIImageView!
    @IBOutlet weak var polyImage: UIImageView!
    @IBOutlet weak var polyTextView: UITextView!
    @IBOutlet weak var pyconTextView: UITextView!
    @IBOutlet weak var pyconImage: UIImageView!
    @IBOutlet weak var codeOrgTextView: UITextView!
    @IBOutlet weak var codeOrgImage: UIImageView!
    @IBOutlet weak var educationLabel: UILabel!
    @IBOutlet weak var volunteeringLabel: UILabel!
    
    
    //MARK : - view LifeCycle
    override func viewDidLoad() {
        
        polyImage.image = UIImage(named: "polymtl.png")
        unisImage.image = UIImage(named: "unis.png")
        pyconImage.image = UIImage(named: "pycon.png")
        codeOrgImage.image = UIImage(named: "codeOrg.png")
        
        polyTextView.text = "University Of Montreal\n2013 - 2016 (Expected)\nB.Eng Software Engineering"
        unisTextView.text = "University Of Sahel\n2010 - 2013\nB.Sc Physics"
        codeOrgTextView.text = "Help adding smart hints to Code.org tutorials"
        pyconTextView.text = "Assist Kids in a tutorial: \"How to program using Python by making games\" during Pycon 2015"
    
    }
    
    override func viewDidAppear(animated: Bool) {
        
        let font = UIFont(name: "Avenir-Light", size: 12)
        let fontTitle = UIFont(name: "Avenir-Medium", size: 16)

        unisTextView.font = font
        polyTextView.font = font
        codeOrgTextView.font = font
        pyconTextView.font = font
        educationLabel.font = fontTitle
        volunteeringLabel.font = fontTitle
    }
}
