//
//  ViewController.swift
//  App
//
//  Created by jie.xing on 2020/11/25.
//

import UIKit
import Basic
import TagrgetA
import TagrgetB

class ViewController: UIViewController, Navigable {

	override func viewDidLoad() {
		super.viewDidLoad()
		let toA = UIBarButtonItem.init(title: "To A", style: .plain, target: self, action: #selector(ViewController.toTargetA))
		let toB = UIBarButtonItem.init(title: "To B", style: .plain, target: self, action: #selector(ViewController.toTargetB))
		navigationItem.rightBarButtonItems = [toA, toB]
	}

	@objc func toTargetA() {
		push(to: TagrgetA.TargetAScene.viewControllerA)
	}
	
	@objc func toTargetB() {
		push(to: TagrgetA.TargetAScene.viewControllerA)
	}
}

