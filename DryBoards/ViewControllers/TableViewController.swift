import UIKit

class TableViewController: UITableViewController {
    // MARK: - UITableViewDataSource

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ShareCell", forIndexPath: indexPath)

        guard let shareCell = cell as? ShareCell else {
            return cell;
        }

        guard let type = ShareType(rawValue: indexPath.row) else {
            return shareCell;
        }

        let viewModel = ShareViewModel(type: type)
        shareCell.configureWith(viewModel)

        return cell
    }

    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 125.0
    }

    // MARK: UITableViewDelegate

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        guard let type = ShareType(rawValue: indexPath.row) else {
            return;
        }

        switch type {
        case .Facebook:
            didSelectFacebookShare()
        case .Twitter:
            didSelectTwitterShare()
        case .Pinterest:
            didSelectPinterestShare()
        case .Google:
            didSelectGoogleShare()
        }
    }

    // MARK: Action Handlers

    private func didSelectFacebookShare() {
        ShareController.shareOn(.Facebook, from: self)
    }

    private func didSelectTwitterShare() {
        ShareController.shareOn(.Twitter, from: self)
    }

    private func didSelectPinterestShare() {
        ShareController.shareOn(.Pinterest, from: self)
    }

    private func didSelectGoogleShare() {
        ShareController.shareOn(.Google, from: self)
    }
}
