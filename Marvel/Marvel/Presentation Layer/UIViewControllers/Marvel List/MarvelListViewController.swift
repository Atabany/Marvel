//
//  MarvelListViewController.swift
//  Marvel
//
//  Created by Mohamed Elatabany on 29/05/2022.
//

import Foundation


import UIKit
class MarvelListViewController: UIViewController {
    
    
    let stackView = UIStackView()
    let label = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
    }
    
}


extension MarvelListViewController {
    private func style() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 20
        
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Welcome"
        label.font = UIFont.preferredFont(forTextStyle: .title1)
        
        view.backgroundColor = .systemBackground
    }
    
    private func layout() {
        stackView.addArrangedSubview(label)
        
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
}


