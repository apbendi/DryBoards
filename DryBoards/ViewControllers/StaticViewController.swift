import UIKit

class StaticViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: Target-Action
    @IBAction func facebookShareDidPress(sender: UIButton) {
        NSLog("Facebook Share")
    }
    
    @IBAction func twitterShareDidPress(sender: UIButton) {
        NSLog("Twitter Share")
    }

    @IBAction func pinterestShareDidPress(sender: UIButton) {
        NSLog("Pinterest Share")
    }

    @IBAction func googleShareDidPress(sender: UIButton) {
        NSLog("Google Share")
    }
}
