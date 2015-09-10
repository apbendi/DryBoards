import UIKit

class ViewController: UIViewController {
    @IBOutlet var buttons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        buttons.forEach { button in button.layer.cornerRadius = 2.0 }
    }
}

