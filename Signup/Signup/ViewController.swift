import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var stackView: UIStackView!
    private var id: String = ""
    private var password: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupInputView(title: "아이디", placeHolder: "영문 소문자, 숫자, 특수기호(_,-), 5~20자", message: "이미 사용중인 아이디입니다.")
        setupInputView(title: "비밀번호", placeHolder: "영문 대/소문자, 숫자, 특수문자(!@#$%) 8~16자", message: "안전한 비밀번호입니다.")
        setupInputView(title: "비밀번호 재확인", placeHolder: "", message: "비밀번호가 일치하지 않습니다.")
        setupInputView(title: "이름", placeHolder: "", message: "이름은 필수 입력 항목입니다.")
    }
    
    func setupInputView(title: String, placeHolder: String, message: String) {
        let inputView = InputView()
        inputView.titleLabel.text = title
        inputView.textField.placeholder = placeHolder
        inputView.messageLabel.text = message
        
        stackView.addArrangedSubview(inputView)
    }
    
    @IBAction func nextButtonTouched(_ sender: UIButton) {
        print("id: \(self.id), password: \(self.password)")
    }
}

