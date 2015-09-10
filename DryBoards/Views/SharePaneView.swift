import UIKit

class SharePaneView: NibDesignable {
    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var shareLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!

    func configureAs(type: ShareType) {
        let viewModel = ShareViewModel.init(type: type)
        
        self.icon.image = viewModel.icon
        self.icon.backgroundColor = viewModel.iconBackground
        self.shareLabel.text = viewModel.header
        self.messageLabel.text = viewModel.message
    }
}
