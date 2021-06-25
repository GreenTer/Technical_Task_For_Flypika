//
//  ViewController.swift
//  Technical_Task_For_Flypika
//
//  Created by Baravitski Aliaksandr on 25.06.21.
//

import UIKit

class ViewController: UIViewController {

    // при загрузке приложения, делаем переход (позже добавлю пользователя)
    // появится Navigation Bar + Tab Bar
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // переход со Storyboard на View Controller 
        let mainStoryboard = UIStoryboard.init(name: "TabBar", bundle: nil)
        // делаем связь View Controller со Storyboard
        let viewController = mainStoryboard.instantiateViewController(identifier: "TabBar")
        // переход на View Controller
        self.navigationController?.pushViewController(viewController, animated: false)
    }
}
