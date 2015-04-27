//
//  FirstViewController.swift
//  WwdcMos
//
//  Created by Mos on 22/04/2015.
//  Copyright (c) 2015 Mos , inc. All rights reserved.
//

import UIKit

class ProjectViewController: UIViewController,UIPageViewControllerDataSource {
    
    // MARK: - Variables
    private var pageViewController: UIPageViewController!
    
    private let contentImages = ["robot2.png",
                                "pinball.png",
                                "eduForum.png"];
    
    
    private let contentText =
    [
    "Build an autonomous robot using ATmega32 µcontroller.\n\n☛Tasks include:\n▹Assemble and weld the various components of the robot's motherboard\n▹Install sensors (sonar, infrared, linetracking) on the robot\n▹Program the robot using C++ and AvrLibc Library\n▹Perform hardware and software testing",
    "Build a 3D Pinball Game using C++/C# and OpenGL.\n\n☛Tasks include:\n▹Integrated Technical concepts: Dynamics of rigid and articulated body, graphics, user interfaces, object oriented programming and design, software testing.\n",
    "Buildind an iOS App that will allow student to ask questions and get answers via picture, a type of interactive forum.\nI have not done much yet, I'm planning to master iOS development a bit more, and work on it during the summer.\n"
    ]
    
    // MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        createPageViewController()
        setupPageControl()
    }
    
    
    private func createPageViewController() {
        
        let pageController = self.storyboard!.instantiateViewControllerWithIdentifier("PageController") as! UIPageViewController
        pageController.dataSource = self
        
        if contentImages.count > 0 {
            let firstController = getItemController(0)!
            let startingViewControllers: NSArray = [firstController]
            pageController.setViewControllers(startingViewControllers as [AnyObject], direction: UIPageViewControllerNavigationDirection.Forward, animated: false, completion: nil)
        }
        
        pageViewController = pageController
        addChildViewController(pageViewController!)
        self.view.addSubview(pageViewController!.view)
        pageViewController!.didMoveToParentViewController(self)
    }
    
    private func setupPageControl() {
        let appearance = UIPageControl.appearance()
        appearance.pageIndicatorTintColor = UIColor.grayColor()
        appearance.currentPageIndicatorTintColor = UIColor.whiteColor()
        appearance.backgroundColor = UIColor.darkGrayColor()
        
    }

    
    
    
    // MARK: - UIPageViewControllerDataSource
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        
        let itemController = viewController as! PageItemController
        
        if itemController.itemIndex > 0 {
            return getItemController(itemController.itemIndex-1)
        }
        
        return nil
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        
        let itemController = viewController as! PageItemController
        
        if itemController.itemIndex+1 < contentImages.count {
            return getItemController(itemController.itemIndex+1)
        }

        return nil

    }
    
    
    private func getItemController(itemIndex: Int) -> PageItemController? {
        
        if itemIndex < contentImages.count {
            let pageItemController = self.storyboard!.instantiateViewControllerWithIdentifier("ItemController") as! PageItemController
            pageItemController.itemIndex = itemIndex
            pageItemController.imageName = contentImages[itemIndex]
            pageItemController.contenttext = contentText[itemIndex]

            return pageItemController
        }
        
        return nil
    }
    


    // MARK: - Page Indicator
    
    func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int {
        return contentImages.count
    }
    
    func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int {
        return 0
    }
    
   
}

