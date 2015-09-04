import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableButton: UIButton!
    @IBOutlet weak var panesButton: UIButton!
    @IBOutlet weak var staticButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        ViewController.styleButtons([self.tableButton, self.panesButton, self.staticButton])
    }

    static func styleButtons(buttons: [UIButton]) {
        for button in buttons {
            button.layer.cornerRadius = 2.0
        }
    }
}

