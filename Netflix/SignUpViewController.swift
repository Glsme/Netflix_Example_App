//
//  SignUpViewController.swift
//  Netflix
//
//  Created by Seokjune Hong on 2022/07/06.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var pwTextField: UITextField!
    @IBOutlet weak var nickNameTextField: UITextField!
    @IBOutlet weak var locationTextField: UITextField!
    @IBOutlet weak var codeTextField: UITextField!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var addInfoSwitch: UISwitch!
    @IBOutlet weak var checkLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        initTextFields()
        
        signUpButton.layer.cornerRadius = 5
        signUpButton.layer.backgroundColor = UIColor.white.cgColor
        signUpButton.setTitle("회원가입", for: .normal)
        signUpButton.backgroundColor = .white
        
        addInfoSwitch.thumbTintColor = .white
        addInfoSwitch.setOn(true, animated: false)
        checkLabel.textAlignment = .center
        
        checkEmailAndPassWord()
        checkCorrectPassWords()
        
        
    }

    func initTextFields() {
        makeTextFieldUI(idTextField)
        idTextField.attributedPlaceholder = NSAttributedString(string: "이메일 주소 또는 전화번호", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        
        makeTextFieldUI(pwTextField)
        pwTextField.attributedPlaceholder = NSAttributedString(string: "비밀번호", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        
        makeTextFieldUI(nickNameTextField)
        nickNameTextField.attributedPlaceholder = NSAttributedString(string: "닉네임", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        
        makeTextFieldUI(locationTextField)
        locationTextField.attributedPlaceholder = NSAttributedString(string: "위치", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        
        makeTextFieldUI(codeTextField)
        codeTextField.attributedPlaceholder = NSAttributedString(string: "추천 코드 입력", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
    }
    
    func makeTextFieldUI(_ textField: UITextField) {
        textField.backgroundColor = .systemGray
        textField.layer.cornerRadius = 5
        textField.textColor = .white
        textField.textAlignment = .center
        
        if textField == codeTextField {
            textField.keyboardType = .numberPad
        } else {
            textField.keyboardType = .default
        }
    }
    
    func checkEmailAndPassWord() {
        if idTextField.text == "" || pwTextField.text == "" {
            checkLabel.text = "이메일과 비밀번호는 필수로 기입해야 합니다."
        }
    }
    
    func checkCorrectPassWords() {
        if let passWord = pwTextField.text {
            if passWord.count < 6 {
                checkLabel.text = "비밀번호를 6자리 이상 기입해주세요"
            }
        }
    }
    

    @IBAction func tapGestureClicked(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    @IBAction func signUpButtonClicked(_ sender: UIButton) {
        view.endEditing(true)
    }
}
