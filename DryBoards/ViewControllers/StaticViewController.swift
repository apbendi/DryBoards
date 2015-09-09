import UIKit

class StaticViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: Target-Action
    @IBAction func facebookShareDidPress(sender: UIButton) {
        ShareController.shareOnFacebookFrom(viewController: self)
    }
    
    @IBAction func twitterShareDidPress(sender: UIButton) {
        ShareController.shareOnTwitterFrom(viewController: self)
    }

    @IBAction func pinterestShareDidPress(sender: UIButton) {
        ShareController.shareOnPinterestFrom(viewController: self)
    }

    @IBAction func googleShareDidPress(sender: UIButton) {
        ShareController.shareOnGoogleFrom(viewController: self)
    }
}
