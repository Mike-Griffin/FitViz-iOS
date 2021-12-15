//
//  SettingsViewController.swift
//  FitViz-iOS
//
//  Created by Mike Griffin on 12/14/21.
//

import UIKit

class SettingsViewController: UIViewController {
    let connectStravaButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Connect with Strava", for: .normal)
        button.backgroundColor = .systemBlue
        button.setTitleColor(.label, for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        view.backgroundColor = .systemBackground
        configureSubviews()
        configureConstraints()
    }
    
    // MARK: UI Setup Functions
    private func configureSubviews() {
        view.addSubview(connectStravaButton)
    }
    
    private func configureConstraints() {
        NSLayoutConstraint.activate([
            connectStravaButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            connectStravaButton.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor)
        ])
    }
}
