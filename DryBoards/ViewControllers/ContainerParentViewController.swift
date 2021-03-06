import UIKit

class ContainerParentViewController: UIViewController {

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        guard let container = segue.destinationViewController as? ContainerViewController  else {
            return;
        }

        guard let type = ShareType.typeFromSegueId(segue.identifier) else {
            return;
        }

        container.viewModel = ShareViewModel.init(type:  type)
        container.shareAction = { ShareController.shareOn(type, from: container) }
    }
}
