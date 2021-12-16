//
//  OnboardViewController.swift
//  FitViz-iOS
//
//  Created by Mike Griffin on 12/15/21.
//

import UIKit

class OnboardViewController: UIViewController {
    let welcomeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Welcome to FitViz"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 28)
        return label
    }()
    
    let closeButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "xmark"), for: .normal)
        button.layer.cornerRadius = 10
        button.backgroundColor = .blue
        button.tintColor = .white
        return button
    }()
    
    override func viewDidLoad() {
        view.backgroundColor = .secondarySystemBackground
        configureSubviews()
        configureConstraints()
    }
    
    private func configureSubviews() {
        view.addSubview(welcomeLabel)
        view.addSubview(closeButton)
    }
    
    private func configureConstraints() {
        NSLayoutConstraint.activate([
            closeButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            closeButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            closeButton.heightAnchor.constraint(equalToConstant: 20),
            closeButton.widthAnchor.constraint(equalToConstant: 20),
            welcomeLabel.topAnchor.constraint(equalTo: closeButton.bottomAnchor, constant: 8),
            welcomeLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            welcomeLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)
        ])
    }
}
