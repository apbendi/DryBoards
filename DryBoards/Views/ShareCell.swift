import UIKit

class ShareCell: UITableViewCell {
    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!

    func configureWith(viewModel: ShareViewModel) {
        icon.image = viewModel.icon
        headerLabel.text = viewModel.header
        messageLabel.text = viewModel.message

        icon.backgroundColor = viewModel.iconBackground
    }
}
