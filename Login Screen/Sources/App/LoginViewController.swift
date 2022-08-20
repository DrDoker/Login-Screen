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
        button.setTitle("Facebook", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 20
        button.backgroundColor = UIColor(named: "facebookButtonColor")
        return button
    }()

    private lazy var twitterButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Twitter", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 20
        button.backgroundColor = UIColor(named: "twitterButtonColor")
        return button
    }()

    private lazy var singUpButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sign up", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        return button
    }()

    // MARK: - Labels Outlets

    private lazy var loginLabel: UILabel = {
        let label = UILabel()
        label.text = "Welcome"
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 45, weight: .thin)
        label.textColor = .white
        return label
    }()

    private lazy var connectLabel: UILabel = {
        let label = UILabel()
        label.text = "or connect with"
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 15, weight: .thin)
        label.textColor = .white
        return label
    }()

    private lazy var dontAccountLabel: UILabel = {
        let label = UILabel()
        label.text = "Don`t have account?"
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 15, weight: .thin)
        label.textColor = .white
        return label
    }()

    // MARK: - TextFields Outlets

    private lazy var loginTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 20
        textField.placeholder = "Enter login"
        textField.returnKeyType = UIReturnKeyType.done
        textField.autocorrectionType = UITextAutocorrectionType.no
        textField.clearButtonMode = UITextField.ViewMode.whileEditing;
        textField.textAlignment = .center
        textField.setLeftIcon(UIImage(systemName: "person"))
        textField.tintColor = .systemGray
        return textField
    }()

    private lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 20
        textField.placeholder = "Enter password"
        textField.returnKeyType = UIReturnKeyType.done
        textField.autocorrectionType = UITextAutocorrectionType.no
        textField.clearButtonMode = UITextField.ViewMode.whileEditing;
        textField.textAlignment = .center
        textField.setLeftIcon(UIImage(systemName: "lock"))
        textField.tintColor = .systemGray
        textField.isSecureTextEntry = true
        return textField
    }()

    // MARK: - ImageView Outlets

    private lazy var backgroundImageView: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        imageView.image = UIImage(named: "backgroundImage")
        imageView.contentMode = .scaleToFill
        return imageView
    }()

    // MARK: - UIView Outlets

    private lazy var line: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray
        view.layer.opacity = 0.3
        view.layer.cornerRadius = 10
        return view
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

        stackView.layer.shadowColor = UIColor(named: "shadowColor")?.cgColor
        stackView.layer.shadowOpacity = 0.7
        stackView.layer.shadowOffset = .zero
        stackView.layer.shadowRadius = 50
        stackView.layer.shouldRasterize = true
        stackView.layer.rasterizationScale = UIScreen.main.scale
        return stackView
    }()

    private lazy var socialMediaStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 15

        stackView.layer.shadowColor = UIColor(named: "shadowColor")?.cgColor
        stackView.layer.shadowOpacity = 0.9
        stackView.layer.shadowOffset = .zero
        stackView.layer.shadowRadius = 40
        stackView.layer.shouldRasterize = true
        stackView.layer.rasterizationScale = UIScreen.main.scale
        return stackView
    }()

    private lazy var singUpStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillProportionally
        stackView.alignment = .center
        stackView.spacing = 20
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
        view.addSubview(singUpStackView)
        view.addSubview(socialMediaStackView)
        view.addSubview(line)
        view.addSubview(connectLabel)

        loginTextFieldStackView.addArrangedSubview(loginTextField)
        loginTextFieldStackView.addArrangedSubview(passwordTextField)
        loginButtonStackView.addArrangedSubview(loginButton)
        loginButtonStackView.addArrangedSubview(forgotPasswordButton)
        loginStackView.addArrangedSubview(loginTextFieldStackView)
        loginStackView.addArrangedSubview(loginButtonStackView)

        socialMediaStackView.addArrangedSubview(facebookButton)
        socialMediaStackView.addArrangedSubview(twitterButton)

        singUpStackView.addArrangedSubview(dontAccountLabel)
        singUpStackView.addArrangedSubview(singUpButton)
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
            make.bottom.equalTo(loginStackView.snp.top).offset(-55)
        }

        connectLabel.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.bottom.equalTo(socialMediaStackView.snp.top).offset(-18)
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

        facebookButton.snp.makeConstraints { make in
            make.height.equalTo(40)
        }

        twitterButton.snp.makeConstraints { make in
            make.height.equalTo(40)
        }

        loginStackView.snp.makeConstraints { make in
            make.centerY.equalTo(view).offset(-60)
            make.left.equalTo(view).offset(45)
            make.right.equalTo(view).inset(45)
        }

        socialMediaStackView.snp.makeConstraints { make in
            make.bottom.equalTo(singUpStackView.snp.top).offset(-50)
            make.left.equalTo(view).offset(30)
            make.right.equalTo(view).inset(30)
        }

        singUpStackView.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.bottom.equalTo(view).offset(-30)
        }

        line.snp.makeConstraints { make in
            make.height.equalTo(1)
            make.left.equalTo(view).offset(30)
            make.right.equalTo(view).inset(30)
            make.bottom.equalTo(socialMediaStackView.snp.top).offset(-10)
        }
    }

    // MARK: - Actions

}

// MARK: - Extension

extension UITextField {
    func setLeftIcon(_ image: UIImage?) {
        let iconView = UIImageView(frame: CGRect(x: 40, y: 5, width: 20, height: 20))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: 50, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
    }
}
