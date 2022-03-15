//
//  ViewController.swift
//  Login
//
//  Created by Mario Saldana on 08/03/22.
//

import UIKit
import KeychainAccess

class ViewController: UIViewController {
    
    var passwordField : UIView?
    var passwordText: UITextField?
    var userField : UIView?
    var userText : UITextField?
    var confirmButton : UIButton?
    var saveButton : UIButton?
    var newPasswordtext : UITextField?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        let keychain = Keychain(service: "com.msalda.Login")
//        self.passwordText?.text = keychain["password"]
        uiInit()
    }
    
    func uiInit() {
        
        
        
        userField = UIView()
        userField?.backgroundColor = .clear
        //totalTextfield?.alpha = 1
        userField?.layer.cornerRadius = 10
        userField?.layer.borderColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5).cgColor
        //emailTextField?.layer.borderColor = UIColor(red: 0, green: 0, blue: 153/255, alpha: 1).cgColor//cambio color
        userField?.layer.borderWidth = 1
        view.addSubview(userField!)
        userField?.addAnchorsAndSize(width: width - 40, height: 70, left: 10, top: 70, right: 10, bottom: nil)
        
        userText = UITextField()
        userText?.backgroundColor = .clear
        userText?.attributedPlaceholder = NSAttributedString(
            string:  "example@gmail.com",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 0, green: 0, blue: 0, alpha: 0.7 )]
        )
        userText?.font = .systemFont(ofSize: 20, weight: UIFont.Weight.semibold)
        userText?.textColor = .black
        userText?.keyboardType = .emailAddress
        userField?.addSubview(userText!)
        userText?.addAnchorsAndSize(width: width - 40, height: 30, left: 10, top: 12, right: 10, bottom: 10)
        

        passwordField = UIView()
        passwordField?.backgroundColor = .clear
        //totalTextfield?.alpha = 1
        passwordField?.layer.cornerRadius = 10
        passwordField?.layer.borderColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5).cgColor
        //emailTextField?.layer.borderColor = UIColor(red: 0, green: 0, blue: 153/255, alpha: 1).cgColor//cambio color
        passwordField?.layer.borderWidth = 1
        view.addSubview(passwordField!)
        passwordField?.addAnchorsAndSize(width: width - 40, height: 70, left: 10, top: 70, right: 10, bottom: nil, withAnchor: .top, relativeToView: userField)

        passwordText = UITextField()
        passwordText?.backgroundColor = .clear
        passwordText?.attributedPlaceholder = NSAttributedString(
            string:  "password",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 0, green: 0, blue: 0, alpha: 0.7 )]
        )
        passwordText?.font = .systemFont(ofSize: 20, weight: UIFont.Weight.semibold)
        passwordText?.textColor = .black
        passwordText?.isSecureTextEntry = true

        passwordField?.addSubview(passwordText!)
        passwordText?.addAnchorsAndSize(width: -40, height: 30, left: 10, top: 20, right: 10, bottom: nil)

        confirmButton = UIButton()
        confirmButton?.setTitle("recuperar", for: .normal)
        confirmButton?.backgroundColor = UIColor(red: 0, green: 0, blue: 153/255, alpha: 1)
        confirmButton?.layer.cornerRadius = 15
        confirmButton?.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        view.addSubview(confirmButton!)
        confirmButton?.addAnchorsAndSize(width: width - 40, height: 50, left: 12, top: height/10, right: 12, bottom: nil, withAnchor: .top, relativeToView: passwordField)
        let tapLoginButton = UITapGestureRecognizer(target: self, action: #selector(buttonAction))
        confirmButton?.addGestureRecognizer(tapLoginButton)


        saveButton = UIButton()
        saveButton?.setTitle("guardar", for: .normal)
        saveButton?.backgroundColor = UIColor(red: 0, green: 0, blue: 153/255, alpha: 1)
        saveButton?.layer.cornerRadius = 15
        saveButton?.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        view.addSubview(saveButton!)
        saveButton?.addAnchorsAndSize(width: width - 40, height: 50, left: 12, top: height/10, right: 12, bottom: nil, withAnchor: .top, relativeToView: confirmButton)
        let tapSaveButton = UITapGestureRecognizer(target: self, action: #selector(saveButtonAction))
        saveButton?.addGestureRecognizer(tapSaveButton)

        newPasswordtext = UITextField()
        newPasswordtext?.text = "password"
        view.addSubview(newPasswordtext!)
        newPasswordtext?.addAnchorsAndSize(width: width - 40, height: 70, left: 10, top: 70, right: 10, bottom: nil, withAnchor: .top, relativeToView: saveButton)
    }
    
    @objc func buttonAction() {
        
        
        //passwordtext?.text = keychain
        
        

    }
    
    @objc func saveButtonAction() {
        let keychain : Keychain
        keychain = Keychain(service: "com.msalda.Login")
        keychain[userText?.text ?? ""] = passwordText?.text
        //let password = self.passwordText?.text
        
        //print("@@@@@",password ?? "")
        
//        let keychain = Keychain(service: "com.msalda.Login")
//        keychain["password"] = password
//
        
        
//        let BooksViewController = TableViewController()
//        BooksViewController.modalPresentationStyle = .fullScreen
//        present(BooksViewController,animated: true,completion:{print("register button press validated")} )

//        let keychain = Keychain(service: "com.msalda.BookStore")
//        keychain["password"] = password

        //navigationController?.pushViewController(BooksViewController, animated: true)
        

    }


}

