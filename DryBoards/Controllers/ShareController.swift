import UIKit

struct ShareController {

    static func shareOnFacebookFrom(viewController viewController: UIViewController) {
        self.shareOn("Facebook", viewController: viewController)
    }

    static func shareOnTwitterFrom(viewController viewController: UIViewController) {
        self.shareOn("Twitter", viewController: viewController)
    }

    static func shareOnPinterestFrom(viewController viewController: UIViewController) {
        self.shareOn("Pinterest", viewController: viewController)
    }

    static func shareOnGoogleFrom(viewController viewController: UIViewController) {
        self.shareOn("Google", viewController: viewController)
    }

    private static func shareOn(network: String, viewController: UIViewController) {
        let alert = UIAlertController(title: "Share", message: "You just shared this on \(network)", preferredStyle: .Alert)
        let okAction = UIAlertAction(title: "OK", style: .Default, handler: nil)

        alert.addAction(okAction)
        viewController.presentViewController(alert, animated: true, completion: nil);
    }
}
