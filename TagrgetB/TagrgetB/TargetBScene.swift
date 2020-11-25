//
//  TargetBScene.swift
//  TagrgetB
//
//  Created by jie.xing on 2020/11/25.
//

import Foundation
import Basic

public enum TargetBScene: SceneAdpater {
	
	case viewControllerA
	case viewControllerB(data: Data)
	
	public func transToScene() -> Scene {
		switch self {
		case .viewControllerA:
			return ViewControllerA()
		case let .viewControllerB(data):
			return ViewControllerB.init(data: data)
		}
	}
}
