import UIKit

class InputView: UIView {

    @IBOutlet weak var inputStackView: UIStackView!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var messageLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        customInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        customInit()
    }
    
    private func customInit() {
        if let view = Bundle.main.loadNibNamed("InputView", owner: self, options: nil)?.first as? UIView {
            view.frame = self.bounds
            addSubview(view)
        }
        textField.autocorrectionType = .no
    }

}
