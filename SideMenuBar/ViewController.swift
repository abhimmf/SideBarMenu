//
//  ViewController.swift
//  SideMenuBar
//
//  Created by Rakesh Kumar on 20/03/19.
//  Copyright © 2019 Rakesh Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var trailingConstraint: NSLayoutConstraint!
    var sideMenuOpen = false
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(toggleSideMenu), name: NSNotification.Name("Toggle"), object: nil)
      
        //add swipe gestures
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipes(_:)))
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipes(_:)))
        
        leftSwipe.direction = .left
        rightSwipe.direction = .right
        
        self.view.addGestureRecognizer(leftSwipe)
        self.view.addGestureRecognizer(rightSwipe)
     }
    
    
    
    @objc func handleSwipes(_ sender:UISwipeGestureRecognizer) {
        if (sender.direction == .left) {
           trailingConstraint.constant = 0
            sideMenuOpen = true
            
        }
        if (sender.direction == .right) {
            trailingConstraint.constant = 240
            sideMenuOpen = false
        }
        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
        }
    }
    
    
   @objc func toggleSideMenu(){
        if sideMenuOpen{
            trailingConstraint.constant = 240
            sideMenuOpen = false
           
        }else {
            trailingConstraint.constant = 0
            sideMenuOpen = true
         }
        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
        }
    }
}

