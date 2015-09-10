import Foundation

enum ShareType : Int {
    case Facebook = 0, Twitter, Pinterest, Google

    static func typeFromSegueId(segueId: String?) -> ShareType? {
        guard let segueId = segueId else {
            return nil;
        }
        
        switch segueId {
        case "FacebookSegue":
            return .Facebook
        case "TwitterSegue":
            return .Twitter
        case "PinterestSegue":
            return .Pinterest
        case "GoogleSegue":
            return .Google
        default:
            return nil
        }
    }
}
