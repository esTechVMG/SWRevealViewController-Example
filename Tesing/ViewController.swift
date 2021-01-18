//
//  ViewController.swift
//  Tesing
//
//  Created by A4-iMAC01 on 12/01/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftButton: UIBarButtonItem!
    @IBOutlet weak var rightButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.sideMenus()
        // Do any additional setup after loading the view.
    }
    func sideMenus() {
        if revealViewController() != nil{
            leftButton.target = revealViewController()
            leftButton.action = #selector(SWRevealViewController.revealToggle(_:))
            rightButton.target = revealViewController()
            rightButton.action = #selector(SWRevealViewController.rightRevealToggle(_:))
            revealViewController()?.rearViewRevealWidth = 270
            revealViewController()?.rightViewRevealWidth = 160
            view.addGestureRecognizer((self.revealViewController()?.panGestureRecognizer())!)
        }
    }

}

