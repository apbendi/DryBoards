import UIKit

class ViewController: UIViewController {
    @IBOutlet var buttons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        ViewController.styleButtons(buttons)
    }

    static func styleButtons(buttons: [UIButton]) {
        for button in buttons {
            button.layer.cornerRadius = 2.0
        }
    }
}

