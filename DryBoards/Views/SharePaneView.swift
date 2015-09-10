import UIKit

protocol SharePaneDelegate: class {
    func sharePaneSharedType(type: ShareType)
}

class SharePaneView: NibDesignable {
    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var shareLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!

    var type: ShareType?
    weak var delegate: SharePaneDelegate?

    func configureAs(type: ShareType) {
        let viewModel = ShareViewModel.init(type: type)
        
        self.icon.image = viewModel.icon
        self.icon.backgroundColor = viewModel.iconBackground
        self.shareLabel.text = viewModel.header
        self.messageLabel.text = viewModel.message

        self.type = type
    }

    @IBAction func shareButtonDidPress(sender: UIButton) {
        if let type = type, delegate = delegate {
            delegate.sharePaneSharedType(type)
        }
    }
}
