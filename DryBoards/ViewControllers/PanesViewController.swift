import UIKit

class PanesViewController: UIViewController {
    @IBOutlet weak var facebookPane: SharePaneView!
    @IBOutlet weak var twitterPane: SharePaneView!
    @IBOutlet weak var pinterestPane: SharePaneView!
    @IBOutlet weak var googlePane: SharePaneView!

    override func viewDidLoad() {
        self.facebookPane.configureAs(.Facebook)
        self.twitterPane.configureAs(.Twitter)
        self.pinterestPane.configureAs(.Pinterest)
        self.googlePane.configureAs(.Google)
    }

}
