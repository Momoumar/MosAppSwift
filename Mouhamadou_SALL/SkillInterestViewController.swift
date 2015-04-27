//
//  SkillInterestViewController.swift
//  WwdcMos
//
//  Created by Mos on 22/04/2015.
//  Copyright (c) 2015 Mos , inc. All rights reserved.
//
import UIKit

class SkillInterestViewController: UIViewController {

    
    
    //MARK : - Label
  
    @IBOutlet weak var skill: UILabel!
    @IBOutlet weak var cp: UILabel!
    @IBOutlet weak var cs: UILabel!
    @IBOutlet weak var swiftLabel: UILabel!
    @IBOutlet weak var pythonLabel: UILabel!
    @IBOutlet weak var objCLabel: UILabel!
    @IBOutlet weak var javaLabel: UILabel!
    @IBOutlet weak var interestLabel: UILabel!
    @IBOutlet weak var interestTextView: UITextView!
    
    
    
    //MARK : - View Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        interestTextView.text = "My main interests vary from:\n✔︎Programming\n✔︎Data science & Graph theory\n✔︎Teaching Kids how to program\n✔︎Soccer - Video Games - Travel"
  
    }
    override func viewDidAppear(animated: Bool) {
        let font = UIFont(name: "Avenir-Light", size: 13)
        let fontTitle = UIFont(name: "Avenir-Medium", size: 16)
        let fontLang = UIFont(name: "Avenir-Light", size: 14)
        
        skill.font = fontTitle
        interestLabel.font = fontTitle
        cp.font = fontLang
        cs.font = fontLang
        swiftLabel.font = fontLang
        pythonLabel.font = fontLang
        objCLabel.font = fontLang
        javaLabel.font = fontLang
        interestTextView.font = font
        
    }

}

