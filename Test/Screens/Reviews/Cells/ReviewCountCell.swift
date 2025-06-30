import UIKit

struct ReviewCountCellConfig: TableCellConfig {

    static let reuseId = String(describing: ReviewCountCellConfig.self)

    let count: Int

    func update(cell: UITableViewCell) {
        guard let cell = cell as? ReviewCountCell else { return }
        cell.countLabel.text = "\(count) отзывов"
    }

    func height(with size: CGSize) -> CGFloat {
        return 44 // Or custom height
    }
}

final class ReviewCountCell: UITableViewCell {

    let countLabel = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setup() {
        countLabel.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        countLabel.textAlignment = .center
        contentView.addSubview(countLabel)
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        countLabel.frame = contentView.bounds.insetBy(dx: 16, dy: 8)
    }
}

