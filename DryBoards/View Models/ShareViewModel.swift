import UIKit

struct ShareViewModel {
    let header: String
    let message: String
    let icon: UIImage
    let iconBackground: UIColor

    init(type: ShareType) {
        switch type {
        case .Facebook:
            header = ShareViewModel.headerFor("Facebook")
            message = "Facebook is a social network so popular no one uses it anymore except your parents."
            iconBackground = UIColor(red: 59.0/255.0, green: 89.0/255.0, blue: 152.0/255.0, alpha:1.0)
        case .Twitter:
            header = ShareViewModel.headerFor("Twitter")
            message = "Twitter is predominatly a place to talk about what's wrong with Twitter and how to fix it."
            iconBackground = UIColor(red: 100.0/255, green: 159.0/255.0, blue: 203.0/255.0, alpha:1.0)
        case .Pinterest:
            header = ShareViewModel.headerFor("Pinterest")
            message = "On Pinterest you PIN things you're INTERESTed in. Get it?"
            iconBackground = UIColor(red: 188.0/255.0, green: 25.0/255.0, blue: 26.0/255.0, alpha:1.0)
        case .Google:
            header = ShareViewModel.headerFor("Google")
            message = "*Taps the mic* Is this thing on? Oops look like this logo is a bit dated!"
            iconBackground = UIColor(red: 220.0/255, green: 79.0/255.0, blue: 66.0/255.0, alpha:1.0)
        }

        icon = ShareViewModel.imageFor(type)
    }

    private static func headerFor(name: String) -> String {
        return "Share on \(name)"
    }

    private static func imageFor(type: ShareType) -> UIImage {
        var maybeImage: UIImage?

        switch type {
        case .Facebook:
            maybeImage = UIImage(named: "Facebook-Icon")
        case .Twitter:
            maybeImage = UIImage(named: "Twitter-Icon")
        case .Pinterest:
            maybeImage = UIImage(named: "Pinterest-Icon")
        case .Google:
            maybeImage = UIImage(named: "Google-Icon")
        }

        guard let image = maybeImage else {
            return UIImage()
        }

        return image
    }
}