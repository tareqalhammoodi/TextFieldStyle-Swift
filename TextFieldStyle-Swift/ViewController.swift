//
//  ViewController.swift
//  TextFieldStyle-Swift
//
//  Created by Tareq Alhammoodi on 28.06.2023.
//

import UIKit

class ViewController: UIViewController {
    
    private let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.clipsToBounds = true
        return scrollView
    }()
    
    private let welcomeLabel: UILabel = {
        let label = UILabel()
        label.text = "Welcome!"
        label.textAlignment = .left
        label.textColor = UIColor(red: 0/255, green: 201/255, blue: 56/255, alpha: 1.0)
        label.font = UIFont(name:"Avenir-Heavy", size: 26.0)
        return label
    }()
    
    private let tLabel: UILabel = {
        let label = UILabel()
        label.text = "Enter your email and password to login."
        label.textAlignment = .left
        label.textColor = UIColor(red: 112/255, green: 112/255, blue: 112/255, alpha: 1.0)
        label.font = UIFont(name:"Avenir-Heavy", size: 16.0)
        return label
    }()
    
    private let emailField: UITextField = {
        let field = UITextField()
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.returnKeyType = .continue
        field.attributedPlaceholder = NSAttributedString(string: "E-Mail", attributes: [NSAttributedString.Key.font: UIFont(name:"Avenir-Light", size: 16.0) as Any, NSAttributedString.Key.foregroundColor: UIColor.black])
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 6, height: 0))
        field.leftViewMode = .always
        field.backgroundColor = .clear
        return field
    }()
    
    private let passwordField: UITextField = {
        let field = UITextField()
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.returnKeyType = .done
        field.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.font: UIFont(name:"Avenir-Light", size: 16.0) as Any, NSAttributedString.Key.foregroundColor: UIColor.black])
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 6, height: 0))
        field.leftViewMode = .always
        field.backgroundColor = .clear 
        field.isSecureTextEntry = true
        return field
    }()
    
    private let forgotPasswordButton: UIButton = {
        let button = UIButton()
        button.setTitle("Forgot Password?", for: .normal)
        button.contentHorizontalAlignment = .right
        button.backgroundColor = .clear
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont(name:"Avenir-Heavy", size: 16.0)
        return button
    }()
    
    private let loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.backgroundColor = UIColor(red: 0/255, green: 201/255, blue: 56/255, alpha: 1.0)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 20
        button.layer.masksToBounds = true
        button.titleLabel?.font = UIFont(name:"Avenir-Black", size: 18.0)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemBackground
        
        // Add subviews
        view.addSubview(scrollView)
        scrollView.addSubview(welcomeLabel)
        scrollView.addSubview(tLabel)
        scrollView.addSubview(emailField)
        scrollView.addSubview(passwordField)
        scrollView.addSubview(forgotPasswordButton)
        scrollView.addSubview(loginButton)
    }
    
    override func viewDidLayoutSubviews () {
        super.viewDidLayoutSubviews ()
        scrollView.frame = view.bounds
                
        welcomeLabel.frame = CGRect(x: 30,
                                    y: scrollView.top+50,
                                    width: scrollView.width-60,
                                    height: 35)
        tLabel.frame = CGRect(x: 30,
                                    y: welcomeLabel.bottom-5,
                                    width: scrollView.width-60,
                                    height: 35)
        emailField.frame = CGRect(x: 30,
                                   y: tLabel.bottom+20,
                                   width: scrollView.width-60,
                                   height: 35)
        passwordField.frame = CGRect(x: 30,
                                     y: emailField.bottom+20,
                                     width: scrollView.width-60,
                                     height: 35)
        forgotPasswordButton.frame = CGRect(x: 30,
                                    y: passwordField.bottom+20,
                                    width: scrollView.width-60,
                                    height: 35)
        loginButton.frame = CGRect(x: 30,
                                   y: forgotPasswordButton.bottom+20,
                                   width: scrollView.width-60,
                                   height: 45)
        
        emailField.addBottomBorder(color: .gray, width: 0.5)
        passwordField.addBottomBorder(color: .gray, width: 0.5)
    }
}
