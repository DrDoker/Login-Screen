//
//  LoginViewController.swift
//  Login Screen
//
//  Created by Serhii  on 19/08/2022.
//

import UIKit
import SnapKit

class LoginViewController: UIViewController {

    // MARK: - Buttons Outlets

    private lazy var loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Login", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 20
        button.backgroundColor = UIColor(named: "loginButtonColor")
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    private lazy var forgotPasswordButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Forgot your password?", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        return button
    }()

    private lazy var facebookButton: UIButton = {
        let button = UIButton(type: .system)

        return button
    }()

    private lazy var twitterButton: UIButton = {
        let button = UIButton(type: .system)

        return button
    }()

    private lazy var singUpButton: UIButton = {
        let button = UIButton(type: .system)

        return button
    }()

    // MARK: - Labels Outlets

    private lazy var loginLabel: UILabel = {
        let label = UILabel()
        label.text = "Login"
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 45, weight: .thin)
        label.textColor = .white
        return label
    }()

    // MARK: - TextFields Outlets

    private lazy var loginTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 20
        textField.placeholder = "Enter text here"
        textField.returnKeyType = UIReturnKeyType.done
        textField.autocorrectionType = UITextAutocorrectionType.no
        textField.clearButtonMode = UITextField.ViewMode.whileEditing;
        textField.textAlignment = .center
        return textField
    }()

    private lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 20
        textField.placeholder = "Enter text here"
        textField.returnKeyType = UIReturnKeyType.done
        textField.autocorrectionType = UITextAutocorrectionType.no
        textField.clearButtonMode = UITextField.ViewMode.whileEditing;
        textField.textAlignment = .center
        return textField
    }()

    // MARK: - ImageView Outlets

    private lazy var backgroundImageView: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        imageView.image = UIImage(named: "backgroundImage")
        imageView.contentMode = .scaleToFill
        return imageView
    }()

    // MARK: - Stack Outlets

    private lazy var loginTextFieldStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.alignment = .fill
        stackView.spacing = 20
        return stackView
    }()

    private lazy var loginButtonStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.alignment = .fill
        stackView.spacing = 10
        return stackView
    }()

    private lazy var loginStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.alignment = .fill
        stackView.spacing = 60
        return stackView
    }()

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarchy()
        setupLayout()
    }

    // MARK: - Setup

    private func setupHierarchy() {
        view.addSubview(backgroundImageView)
        view.addSubview(loginLabel)
        view.addSubview(loginTextFieldStackView)
        view.addSubview(loginButtonStackView)
        view.addSubview(loginStackView)

        loginTextFieldStackView.addArrangedSubview(loginTextField)
        loginTextFieldStackView.addArrangedSubview(passwordTextField)

        loginButtonStackView.addArrangedSubview(loginButton)
        loginButtonStackView.addArrangedSubview(forgotPasswordButton)

        loginStackView.addArrangedSubview(loginTextFieldStackView)
        loginStackView.addArrangedSubview(loginButtonStackView)


    }

    private func setupLayout() {
        backgroundImageView.snp.makeConstraints { make in
            make.bottom.equalTo(view)
            make.top.equalTo(view)
            make.left.equalTo(view)
            make.right.equalTo(view)
        }

        loginLabel.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.bottom.equalTo(loginStackView.snp.top).offset(-60)
        }

        loginTextField.snp.makeConstraints { make in
            make.height.equalTo(45)
        }

        passwordTextField.snp.makeConstraints { make in
            make.height.equalTo(45)
        }

        loginButton.snp.makeConstraints { make in
            make.height.equalTo(45)
        }

        loginStackView.snp.makeConstraints { make in
            make.centerY.equalTo(view).offset(-60)
            make.left.equalTo(view).offset(45)
            make.right.equalTo(view).inset(45)
        }
    }

    // MARK: - Actions

    // MARK: - Other


}
