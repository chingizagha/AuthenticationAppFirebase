//
//  HomeController.swift
//  AuthenticationApp
//
//  Created by Chingiz on 28.02.24.
//

import UIKit

class HomeController: UIViewController {
    
    private let label: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 24, weight: .semibold)
        label.numberOfLines = 2
        label.text = "Loading..."
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
        label.text = "Chingiz Agha\ncingiz167@gmail.com"
    }
    
    // MARK: - UI Setup
    private func setupUI() {
        view.backgroundColor = .systemBackground
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(didTapLogout))
        
        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    @objc
    private func didTapLogout(){
        
    }

}
