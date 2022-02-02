//
//  SignUpViewController.swift
//  BookUnoProj
//
//  Created by Nicolette Tan on 2022-02-01.
//

import UIKit

class SignUpViewController: UIViewController {

    private let appLabel = UILabel()
    private let titleLabel = UILabel()
    private let emailTextField = UITextField()
    private let passwordTextField = UITextField()
    private let addrTextField = UITextField()
    private let birthdateTextField = UITextField()
    private let registerButton = UIButton(type: .roundedRect)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        didLoadSetup()
    }
}

extension SignUpViewController {
    @objc func handleRegisterButton() {
        print("Registered successfully")
    }
}

private extension SignUpViewController {
    func didLoadSetup() {
        view.addSubview(appLabel)
        view.addSubview(titleLabel)
        view.addSubview(emailTextField)
        view.addSubview(passwordTextField)
        view.addSubview(addrTextField)
        view.addSubview(birthdateTextField)
        view.addSubview(registerButton)
        
        setupAppLabel()
        setupTitleLabel()
        setupEmailTextField()
        setupPasswordTextField()
        setupAddrTextField()
        setupBirthdateTextField()
        setupRegisterButton()
    }
    
    func setupAppLabel() {
        appLabel.translatesAutoresizingMaskIntoConstraints = false
        
        appLabel.text = "Book Uno"
        appLabel.textAlignment = .center
        
        NSLayoutConstraint.activate(
        [
            appLabel.safeAreaLayoutGuide.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            appLabel.safeAreaLayoutGuide.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            appLabel.safeAreaLayoutGuide.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20)
        ])
    }
    
    func setupTitleLabel() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        titleLabel.text = "Register"
        titleLabel.textAlignment = .center
        
        NSLayoutConstraint.activate(
        [
            titleLabel.safeAreaLayoutGuide.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 150),
            titleLabel.safeAreaLayoutGuide.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            titleLabel.safeAreaLayoutGuide.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10)
        ])
    }
    
    func setupEmailTextField() {
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        
        emailTextField.placeholder = "Email"
        emailTextField.textAlignment = .left
        emailTextField.borderStyle = .roundedRect
        
        NSLayoutConstraint.activate(
        [
            emailTextField.safeAreaLayoutGuide.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 190),
            emailTextField.safeAreaLayoutGuide.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50),
            emailTextField.safeAreaLayoutGuide.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50)
        ])
    }
    
    func setupPasswordTextField() {
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        
        passwordTextField.placeholder = "Password"
        passwordTextField.textAlignment = .left
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.isSecureTextEntry = true
        
        NSLayoutConstraint.activate(
        [
            passwordTextField.safeAreaLayoutGuide.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 230),
            passwordTextField.safeAreaLayoutGuide.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50),
            passwordTextField.safeAreaLayoutGuide.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50)
        ])
    }
    
    func setupAddrTextField() {
        addrTextField.translatesAutoresizingMaskIntoConstraints = false
        
        addrTextField.placeholder = "Address"
        addrTextField.textAlignment = .left
        addrTextField.borderStyle = .roundedRect
    
        NSLayoutConstraint.activate(
        [
            addrTextField.safeAreaLayoutGuide.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 270),
            addrTextField.safeAreaLayoutGuide.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50),
            addrTextField.safeAreaLayoutGuide.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50)
        ])
    }
    
    func setupBirthdateTextField() {
        birthdateTextField.translatesAutoresizingMaskIntoConstraints = false
        
        birthdateTextField.placeholder = "Address"
        birthdateTextField.textAlignment = .left
        birthdateTextField.borderStyle = .roundedRect
    
        NSLayoutConstraint.activate(
        [
            birthdateTextField.safeAreaLayoutGuide.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 310),
            birthdateTextField.safeAreaLayoutGuide.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50),
            birthdateTextField.safeAreaLayoutGuide.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50)
        ])
    }
    
    func setupRegisterButton() {
        registerButton.translatesAutoresizingMaskIntoConstraints = false
        registerButton.setTitle("Login", for: .normal)
        
        registerButton.addTarget(self, action: #selector(handleRegisterButton), for: .touchUpInside)
        registerButton.backgroundColor = .systemBrown
        registerButton.setTitleColor(.white, for: .normal)
        registerButton.layer.cornerRadius = 8
        
        NSLayoutConstraint.activate(
        [
            registerButton.safeAreaLayoutGuide.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 280),
            registerButton.safeAreaLayoutGuide.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 150),
            registerButton.safeAreaLayoutGuide.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -150)
        ])
    }
    
}

