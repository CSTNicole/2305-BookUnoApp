//
//  ViewController.swift
//  BookUnoProj hfrfufhtisuadhan
//
//  Created by Nicolette Tan on 2022-01-31.
//

import UIKit

class ViewController: UIViewController {

    private let appLabel = UILabel()
    private let titleLabel = UILabel()
    private let emailTextField = UITextField()
    private let passwordTextField = UITextField()
    private let loginButton = UIButton(type: .roundedRect)
    private let registerHereText = UILabel()
    private let registerHere = UIButton(type: .roundedRect)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        didLoadSetup()
    }

}

extension ViewController {
    @objc func handleLoginButton() {
        print("Login successfully")
    }
    
    @objc func handleRegisterHere() {
        print("you clicked it!")
    }
}

private extension ViewController {
    func didLoadSetup() {
        view.addSubview(appLabel)
        view.addSubview(titleLabel)
        view.addSubview(emailTextField)
        view.addSubview(passwordTextField)
        view.addSubview(loginButton)
        view.addSubview(registerHereText)
        view.addSubview(registerHere)
        
        setupAppLabel()
        setupTitleLabel()
        setupEmailTextField()
        setupPasswordTextField()
        setupLoginButton()
        setupRegisterHereText()
        setupRegisterHere()
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
        
        titleLabel.text = "Login"
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
    
    func setupLoginButton() {
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.setTitle("Login", for: .normal)
        
        loginButton.addTarget(self, action: #selector(handleLoginButton), for: .touchUpInside)
        loginButton.backgroundColor = .systemBrown
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.layer.cornerRadius = 8
        
        NSLayoutConstraint.activate(
        [
            loginButton.safeAreaLayoutGuide.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 280),
            loginButton.safeAreaLayoutGuide.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 150),
            loginButton.safeAreaLayoutGuide.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -150)
        ])
    }
    
    func setupRegisterHereText() {
        registerHereText.translatesAutoresizingMaskIntoConstraints = false
        
        registerHereText.text = "Don't have an account?"
        registerHereText.textAlignment = .center
        
        NSLayoutConstraint.activate(
        [
            registerHereText.safeAreaLayoutGuide.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 580),
            registerHereText.safeAreaLayoutGuide.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            registerHereText.safeAreaLayoutGuide.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            registerHereText.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50)
        ])
    }
    
    func setupRegisterHere() {
        registerHere.translatesAutoresizingMaskIntoConstraints = false
        registerHere.setTitle("Register Here!", for: .normal)
        
        registerHere.addTarget(self, action: #selector(handleRegisterHere), for: .touchUpInside)
        //loginButton.backgroundColor = .systemBrown
        registerHere.setTitleColor(.brown, for: .normal)
        
        NSLayoutConstraint.activate(
        [
            registerHere.safeAreaLayoutGuide.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 600),
            registerHere.safeAreaLayoutGuide.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 100),
            registerHere.safeAreaLayoutGuide.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -100),
            registerHere.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30)
        ])
    }
}

