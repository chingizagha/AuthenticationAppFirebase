//
//  CustomTextField.swift
//  AuthenticationApp
//
//  Created by Chingiz on 28.02.24.
//

import UIKit

class CustomTextField: UITextField {

    enum CustomTextFieldType{
        case username
        case email
        case password
    }
    
    private let authFieldType: CustomTextFieldType
    
    init(fieldType: CustomTextFieldType) {
        self.authFieldType = fieldType
        super.init(frame: .zero)
        
        backgroundColor = .secondarySystemBackground
        layer.cornerRadius = 10
        
        returnKeyType = .done
        autocorrectionType = .no
        autocapitalizationType = .none
        
        
        leftViewMode = .always
        leftView = UIView(frame: CGRect(x: 0, y: 0, width: 12, height: frame.size.height))
        
        switch fieldType {
        case .username:
            placeholder = "Username"
        case .email:
            placeholder = "Email Address"
            keyboardType = .emailAddress
            textContentType = .emailAddress
        case .password:
            placeholder = "Password"
            textContentType = .oneTimeCode
            isSecureTextEntry = true
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }

}
