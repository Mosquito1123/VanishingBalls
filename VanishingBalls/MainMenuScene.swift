//
//  MainMenuScene.swift
//  VanishingBalls
//
//  Created by Mosquito1123 on 20/05/2019.
//  Copyright © 2019 Cranberry. All rights reserved.
//

import Foundation
import SpriteKit

class MainMenuScene: SKScene {
    
    override func didMove(to view: SKView) {
        
        
        let background = SKSpriteNode (imageNamed: "background")
        background.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        background.size = CGSize(width: self.size.width, height: self.size.height)
        background.zPosition = 0
        self.addChild(background)
        
        let gameBy = SKLabelNode(fontNamed: "Varsity")
        gameBy.text = "Cranberry syed presents"
        gameBy.fontSize = 30
        gameBy.fontColor = SKColor.white
        gameBy.position = CGPoint(x: self.size.width*0.5, y: self.size.height*0.78)
        gameBy.zPosition = 1
        self.addChild(gameBy)
        
        let gameName = SKLabelNode(fontNamed: "VARSITY")
        gameName.text = "VANISHING"
        gameName.fontSize = 80
        gameName.fontColor = SKColor.white
        gameName.position = CGPoint(x: self.size.width*0.5, y: self.size.height*0.7)
        gameName.zPosition = 1
        self.addChild(gameName)
        
        let gameName2 = SKLabelNode(fontNamed: "VARSITY")
        gameName2.text = "BALLS"
        gameName2.fontSize = 80
        gameName2.fontColor = SKColor.white
        gameName2.position = CGPoint(x: self.size.width*0.5, y: self.size.height*0.62)
        gameName2.zPosition = 1
        self.addChild(gameName2)
        
        let startGame = SKLabelNode(fontNamed: "VARSITY")
        startGame.text = "START GAME"
        startGame.fontSize = 55
        startGame.fontColor = SKColor.white
        startGame.position = CGPoint(x: self.size.width*0.5, y: self.size.height*0.4)
        startGame.name = "start game"
        startGame.zPosition = 1
        self.addChild(startGame)
        
        
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for touch: AnyObject in touches{
            
            let pointOfTouch = touch.location(in: self)
            let nodeITapped = atPoint(pointOfTouch)
            
            if nodeITapped.name == "start game"{
                
                let sceneToMoveTo = GameScene(size: self.size)
                sceneToMoveTo.scaleMode = self.scaleMode
                let myTransition = SKTransition.fade(withDuration: 0.5)
                self.view!.presentScene(sceneToMoveTo, transition: myTransition)
                
            }
            
            
            
        }
    }
    
}

