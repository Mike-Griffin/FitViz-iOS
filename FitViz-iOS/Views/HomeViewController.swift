//
//  ViewController.swift
//  FitViz-iOS
//
//  Created by Mike Griffin on 12/14/21.
//

import UIKit

class HomeViewController: UIViewController {
    
    let onboardVC: OnboardViewController = {
        let vc = OnboardViewController()
        vc.view.translatesAutoresizingMaskIntoConstraints = false
        return vc
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureChildren()
        configureConstraints()
    }

    private func configureChildren() {
        onboardVC.didMove(toParent: self)
        view.addSubview(onboardVC.view)
    }
    
    private func configureConstraints() {
        NSLayoutConstraint.activate([
            onboardVC.view.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            onboardVC.view.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            onboardVC.view.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.75),
            onboardVC.view.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.75)
        ])
    }
}

