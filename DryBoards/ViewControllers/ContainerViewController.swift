import UIKit

class ContainerViewController: UIViewController {
    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var shareLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!

    var viewModel: ShareViewModel?

    override func viewDidLoad() {
        super.viewDidLoad()

        if let viewModel = viewModel {
            self.icon.image = viewModel.icon
            self.icon.backgroundColor = viewModel.iconBackground
            self.shareLabel.text = viewModel.header
            self.messageLabel.text = viewModel.message
        }
    }
}
