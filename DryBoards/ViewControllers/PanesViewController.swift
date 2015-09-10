import UIKit

class PanesViewController: UIViewController, SharePaneDelegate {
    @IBOutlet weak var facebookPane: SharePaneView!
    @IBOutlet weak var twitterPane: SharePaneView!
    @IBOutlet weak var pinterestPane: SharePaneView!
    @IBOutlet weak var googlePane: SharePaneView!

    override func viewDidLoad() {
        self.facebookPane.configureAs(.Facebook)
        self.twitterPane.configureAs(.Twitter)
        self.pinterestPane.configureAs(.Pinterest)
        self.googlePane.configureAs(.Google)

        [facebookPane, twitterPane, pinterestPane, googlePane].map { pane in pane.delegate = self }
    }

    func sharePaneSharedType(type: ShareType) {
        ShareController.shareOn(type, from: self)
    }
}
