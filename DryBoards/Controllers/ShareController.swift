import UIKit

struct ShareController {

    static func shareOn(network: ShareType, from: UIViewController) {
        let name : String

        switch network {
        case .Facebook:
            name = "Facebook"
        case .Twitter:
            name = "Twitter"
        case .Pinterest:
            name = "Pinterest"
        case .Google:
            name = "Google"
        }

        shareOn(name, viewController: from)
    }

    private static func shareOn(network: String, viewController: UIViewController) {
        let alert = UIAlertController(title: "Share", message: "You just shared this on \(network)", preferredStyle: .Alert)
        let okAction = UIAlertAction(title: "OK", style: .Default, handler: nil)

        alert.addAction(okAction)
        viewController.presentViewController(alert, animated: true, completion: nil);
    }
}
