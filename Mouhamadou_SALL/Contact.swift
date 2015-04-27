//
//  Contact.swift
//  WwdcMos
//
//  Created by Mos on 25/04/2015.
//  Inspired By A.Bancroft
//  Copyright (c) 2015 Mos , inc. All rights reserved.
//

import UIKit
import MessageUI

class Contact:UIViewController,MFMailComposeViewControllerDelegate {
    
    //MARK: - Outlet
    @IBOutlet weak var contactLabel: UILabel!
    @IBOutlet weak var emailLabel: UIButton!
    @IBOutlet weak var phoneLabel: UIButton!
    @IBOutlet weak var linkedInLabel: UIButton!
    @IBOutlet weak var githubLabel: UIButton!
    
    
    //MARK: - Buttons Actions
    @IBAction func emailButton(sender: UIButton) {
        let mailComposeViewController = configuredMailComposeViewController()
        if MFMailComposeViewController.canSendMail(){
            self.presentViewController(mailComposeViewController, animated: true, completion: nil)
        } else{
            self.showSendMailErrorAlert()
        }
        
    }
    
    @IBAction func linkedInButton(sender: UIButton) {
        
        UIApplication.sharedApplication().openURL(NSURL(string: "http://ca.linkedin.com/in/momoumar")!)
        
    }
    
    @IBAction func githubButton(sender: UIButton) {
          UIApplication.sharedApplication().openURL(NSURL(string: "http://www.github.com/Momoumar")!)
    }
    
    @IBAction func phoneButton(sender: AnyObject) {
        // it seems that simulator doesn't allow phone call test :-(
        let phone = "tel://+15147091992"
        let url:NSURL = NSURL(string:phone)!
        UIApplication.sharedApplication().openURL(url)
    }
    
    
    //MARK: - mail configuration
    func configuredMailComposeViewController() -> MFMailComposeViewController
    {
        let mailComposerVC = MFMailComposeViewController()
        mailComposerVC.mailComposeDelegate = self
        mailComposerVC.setToRecipients(["mouhamadou.sall@polymtl.ca"])
        mailComposerVC.setSubject("Sending you an  e-mail from Your App :-)")
        mailComposerVC.setMessageBody("Hi Mouhamadou. Your App is really cool for a beginner. Keep going...", isHTML: false)
        return mailComposerVC
    }
    
    
    
    func showSendMailErrorAlert()
    {
        let sendMailErrorAlert = UIAlertView(title: "Could Not Send Email", message: "Your device could not send e-mail.  Please check e-mail configuration and try again.", delegate: self, cancelButtonTitle: "OK")
            sendMailErrorAlert.show()
    }
    
    //MARK: - MFMailComposeViewControllerDelegate 
    func mailComposeController(controller: MFMailComposeViewController!, didFinishWithResult result: MFMailComposeResult, error: NSError!)
    {
        controller.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    //MARK: - View lifeCycle
    override func viewDidAppear(animated: Bool) {
        let fontTitle = UIFont(name: "Avenir-Medium", size: 16)
        let font = UIFont(name: "Avenir-Light", size: 14)

        contactLabel.font = fontTitle
   
    }
    
}
