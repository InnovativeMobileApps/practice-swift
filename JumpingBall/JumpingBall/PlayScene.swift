import SpriteKit


class PlayScene: SKScene{
    // Sprite node for the bar
    let runningBar = SKSpriteNode(imageNamed: "bar")
    // Original X position for the running bar
    let originRunningBarPositionX = CGFloat(0)
    
    
    override func didMoveToView(view: SKView!) {
        self.backgroundColor = UIColor(hex: 0x809DFF)
        
        // Set the anchor point of the running bar at (0, 0.5)
        self.runningBar.anchorPoint = CGPointMake(0, 0.5)
        // Set the bar at the bottom of the screen
        self.runningBar.position = CGPointMake(
            CGRectGetMinX(self.frame),
            CGRectGetMinY(self.frame) * (self.runningBar.size.height / 2))
        
        // Set the original running bar X-position
        self.originRunningBarPositionX = self.runningBar.position.x
        
        // Present the running bar in the screen
        self.addChild(self.runningBar)
        
    }
    
    /// Update the scene: It will run every single frame
    override func update(currentTime: NSTimeInterval) {
        
    }
}