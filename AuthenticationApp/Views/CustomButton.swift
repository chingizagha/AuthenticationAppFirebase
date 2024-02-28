//
//  CustomButton.swift
//  AuthenticationApp
//
//  Created by Chingiz on 28.02.24.
//

import UIKit

class CustomButton: UIButton {

    enum FontSize{
        case big
        case med
        case small
    }
    
    init(title: String, hasBackground: Bool = false, fontSize: FontSize){
        super.init(frame: .zero)
        setTitle(title, for: .normal)
        layer.cornerRadius = 12
        layer.masksToBounds = true
        
        backgroundColor = hasBackground ? .systemBlue : .clear
        
        let titleColor: UIColor = hasBackground ? .white : .systemBlue
        setTitleColor(titleColor, for: .normal)
        
        switch fontSize {
        case .big:
            titleLabel?.font = .systemFont(ofSize: 22, weight: .bold)
        case .med:
            titleLabel?.font = .systemFont(ofSize: 18, weight: .semibold)
        case .small:
            titleLabel?.font = .systemFont(ofSize: 16, weight: .regular)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }

}
