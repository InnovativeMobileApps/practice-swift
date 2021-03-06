
import SpriteKit

class EndScene: SKScene {
    override init(size: CGSize) {
        super.init(size: size)
        
        var star: SKSpriteNode? = SKSpriteNode(imageNamed: "Star2")
        star?.position = CGPointMake(25, size.height-30)
        self.addChild(star!)
        star = nil
        
        
        var lblStars:SKLabelNode = SKLabelNode(fontNamed: "ChalkboardSE-Bold")
        lblStars.fontSize = 30;
        lblStars.fontColor = SKColor.whiteColor()
        lblStars.position = CGPointMake(50, size.height-40);
        lblStars.horizontalAlignmentMode = SKLabelHorizontalAlignmentMode.Left
        lblStars.text = NSString(format:"%d", GameState.sharedInstance._stars)
        self.addChild(lblStars)
        
        // Score
        var lblScore:SKLabelNode = SKLabelNode(fontNamed: "ChalkboardSE-Bold")
        lblScore.fontSize = 60;
        lblScore.fontColor = SKColor.whiteColor()
        lblScore.position = CGPointMake(160, 300);
        lblScore.horizontalAlignmentMode = SKLabelHorizontalAlignmentMode.Center
        lblScore.text = NSString(format:"%d", GameState.sharedInstance._score)
        self.addChild(lblScore)
        
        // High Score
        var lblHighScore:SKLabelNode = SKLabelNode(fontNamed:"ChalkboardSE-Bold")
        lblHighScore.fontSize = 30
        lblHighScore.fontColor = SKColor.cyanColor()
        lblHighScore.position = CGPointMake(160, 150);
        lblHighScore.horizontalAlignmentMode = SKLabelHorizontalAlignmentMode.Center
        lblHighScore.text = NSString(format: "High Score: %d", GameState.sharedInstance._highScore)
        self.addChild(lblHighScore)
        
        // Try again
        var lblTryAgain:SKLabelNode = SKLabelNode(fontNamed: "ChalkboardSE-Bold")
        lblTryAgain.fontSize = 30;
        lblTryAgain.fontColor = SKColor.whiteColor()
        lblTryAgain.position = CGPointMake(160, 50)
        lblTryAgain.horizontalAlignmentMode = SKLabelHorizontalAlignmentMode.Center
        lblTryAgain.text = "Tap To Try Again"
        self.addChild(lblTryAgain)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    /// Restart the game
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        var myScene:SKScene = GameScene(size:self.size)
        var reveal:SKTransition = SKTransition.fadeWithDuration(0.5)
        self.view?.presentScene(myScene, transition: reveal)
    }
}
