//
//  ViewController.swift
//  Technical_Task_For_Flypika
//
//  Created by Baravitski Aliaksandr on 25.06.21.
//

import UIKit

class AuthViewController: UIViewController {
    
    private var authService: AuthService!
    
    @IBOutlet weak var vkEnter: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        authService = SceneDelegate.shared().authService
        
        

//        vkEnter.setImage(UIImage(named: "ic_vk_activity_logo"), for: .normal)
//        vkEnter.setImage(UIImage(named: iconName), for: .normal)
    }
    
    @IBAction func signInTouch(_ sender: UIButton) {
        authService.wakeUpSession()
    }
}

