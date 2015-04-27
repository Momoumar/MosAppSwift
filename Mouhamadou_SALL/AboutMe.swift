//
//  AboutMe.swift
//  WwdcMos
//
//  Created by Mos on 23/04/2015.
//  Copyright (c) 2015 Mos , inc. All rights reserved.
//

import UIKit

class AboutMe: UIViewController {
    
    //MARK : - Outlet
    @IBOutlet weak var profilePicture: UIImageView!
    @IBOutlet weak var bio: UITextView!
    @IBOutlet weak var bioLabel: UILabel!
    
    
    
    //MARK : - View lifeCycle
    override func viewWillAppear(animated: Bool) {
        profilePicture.image = UIImage(named: "MosHd2.png")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bio.text = "My name is Mouhamadou Oumar SALL.\nI am a Software Engineering Student (Computer Science Enthusiast) at University of Montreal.\nI was born in a family where everyone is passionate about Apple products.\nCertainly we have inherited from my father who is using Apple since 80s.\nAfter beeing a long time iDevice's User, I think it's time for me to start creating awesome Apps.\nTo do so,I'm learning Objective-C and Swift at the moment. This App is the first one I've made and this is certainly not the last.\nI've been following Apple's conference since my little age and participating in a conference one day will be a great pleasure for me."
        circularPic()
        
        
    }
    override func viewDidAppear(animated: Bool) {
        let bioFont = UIFont(name: "Avenir-Light", size: 13)
        bio.font = bioFont
        bioLabel.font = UIFont(name: "Avenir-Medium", size: 16)
    }
    
    func  circularPic(){
    self.profilePicture.layer.cornerRadius = self.profilePicture.frame.size.width / 2.5
    self.profilePicture.layer.borderWidth = 2.0
    self.profilePicture.clipsToBounds = true
    }

}
