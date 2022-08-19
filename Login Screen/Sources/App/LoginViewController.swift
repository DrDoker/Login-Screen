//
//  LoginViewController.swift
//  Login Screen
//
//  Created by Serhii  on 19/08/2022.
//

import UIKit

class LoginViewController: UIViewController {

    // MARK: - Buttons Outlets

    private lazy var loginButton: UIButton = {
        let button = UIButton(type: .system)

        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    private lazy var forgotPasswordButton: UIButton = {
        let button = UIButton(type: .system)

        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    private lazy var facebookButton: UIButton = {
        let button = UIButton(type: .system)

        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    private lazy var twitterButton: UIButton = {
        let button = UIButton(type: .system)

        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    private lazy var singUpButton: UIButton = {
        let button = UIButton(type: .system)

        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    // MARK: - Labels Outlets

    private lazy var loginLabel: UILabel = {
        let label = UILabel()
        label.text = ""
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 100, weight: .thin)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    // MARK: - TextFields Outlets

    private lazy var loginTextField: UITextField = {
        let textField = UITextField()

        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()

    private lazy var passwordTextField: UITextField = {
        let textField = UITextField()

        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()

    // MARK: - ImageView Outlets

    private lazy var backgroundImageView: UIImageView = {
        let imageView = UIImageView(frame: .zero)

        return imageView
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

    }

    private func setupLayout() {

    }

    // MARK: - Actions

    // MARK: - Other


}
