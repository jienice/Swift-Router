//
//  Router.swift
//  Basic
//
//  Created by jie.xing on 2020/11/25.
//

import UIKit

public protocol Scene: UIViewController {
	
}

public protocol SceneAdpater {
	
	func transToScene() -> Scene
}

public protocol Navigable: UIViewController {
	
	func push(to scene: SceneAdpater, animated: Bool)
	
	func pop(toRoot: Bool, animated: Bool)
}

public extension Navigable {
	
	func push(to scene: SceneAdpater, animated: Bool = true) {
		let scene = scene.transToScene()
		DispatchQueue.main.async { [weak self] in
			self?.navigationController?.pushViewController(scene, animated: animated)
		}
	}
	
	func pop(toRoot: Bool = false, animated: Bool = true) {
		DispatchQueue.main.async { [weak self] in
			if toRoot {
				self?.navigationController?.popToRootViewController(animated: animated)
			} else {
				self?.navigationController?.popViewController(animated: animated)
			}
		}
	}
	
}
