//
//  MainViewController.swift
//  SideMenuBar
//
//  Created by Rakesh Kumar on 20/03/19.
//  Copyright © 2019 Rakesh Kumar. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var hide_view: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
 }
    

    @IBAction func action_ToggleBtn(_ sender: Any) {
     NotificationCenter.default.post(name: NSNotification.Name("Toggle"), object: nil)
    }
}
