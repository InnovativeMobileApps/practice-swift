import SpriteKit

class GameScene: SKScene {
    let _gridWidth = 400
    let _gridHeight = 300
    let _numRows = 8
    let _numCols = 10
    let _gridLowerLeftCorner: CGPoint = CGPoint(x: 158, y:10)
    
    override func didMoveToView(view: SKView) {
        /// Add main background
        let background = SKSpriteNode(imageNamed: "background.pmg")
        background.anchorPoint = CGPoint(x:0, y:0)
        background.size = self.size
        background.zPosition = -2
        self.addChild(background)
        
        // Add main grid background
        let gridBackground = SKSpriteNode(imageNamed: "grid.png")
        gridBackground.size = CGSize(width: _gridWidth, height:_gridHeight)
        gridBackground.zPosition = -1
        gridBackground.anchorPoint = CGPoint(x:0, y:0)
        gridBackground.position = _gridLowerLeftCorner
        self.addChild(gridBackground)
        
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}