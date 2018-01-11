//
//  spaceship.swift
//  ARKit Game
//
//  Created by Raunak Bhojwani on 1/11/18.
//  Copyright © 2018 ricron. All rights reserved.
//

import UIKit
import ARKit

class spaceship: SCNNode {
    
    func loadModel() {
        guard let virtualObjectScene = SCNScene(named: "art.scnassets/ship.scn") else {return}
        
        let wrapperNode = SCNNode()
        
        for child in virtualObjectScene.rootNode.childNodes {
            wrapperNode.addChildNode(child)
        }
        
        self.addChildNode(wrapperNode)
    }

}
