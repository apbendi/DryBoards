import UIKit

class StaticViewController: UIViewController {
    
    // MARK: Target-Action
    @IBAction func facebookShareDidPress(sender: UIButton) {
        ShareController.shareOn(.Facebook, from:self)
    }
    
    @IBAction func twitterShareDidPress(sender: UIButton) {
        ShareController.shareOn(.Twitter, from: self)
    }

    @IBAction func pinterestShareDidPress(sender: UIButton) {
        ShareController.shareOn(.Pinterest, from: self)
    }

    @IBAction func googleShareDidPress(sender: UIButton) {
        ShareController.shareOn(.Google, from: self)
    }
}
