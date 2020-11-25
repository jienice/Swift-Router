//
//  ViewControllerA.swift
//  TagrgetA
//
//  Created by jie.xing on 2020/11/25.
//

import UIKit
import Basic

class ViewControllerA: UIViewController, Scene {

	override func viewDidLoad() {
		super.viewDidLoad()
		navigationItem.title = "TagrgetA-A"
	}
}


class ViewControllerB: UIViewController, Scene {
	
	init(data: Data) {
		super.init(nibName: nil, bundle: nil)
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		navigationItem.title = "TagrgetA-B"
	}
}
