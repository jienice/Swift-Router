//
//  TabBarViewController.swift
//  App
//
//  Created by jie.xing on 2020/11/25.
//

import UIKit
import TagrgetB
import TagrgetA

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
		
		let v1 = UINavigationController.init(rootViewController: TargetAScene.viewControllerA.transToScene())
		v1.tabBarItem = UITabBarItem.init(title: "TargetAScene-A", image: nil, selectedImage: nil)
		
		let v2 = UINavigationController.init(rootViewController: TargetBScene.viewControllerA.transToScene())
		v2.tabBarItem = UITabBarItem.init(title: "TargetBScene-A", image: nil, selectedImage: nil)
		
		viewControllers = [v1, v2]
    }

}
