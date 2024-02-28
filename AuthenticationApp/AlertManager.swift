//
//  AlertManager.swift
//  AuthenticationApp
//
//  Created by Chingiz on 28.02.24.
//

import UIKit

final class AlertManager{
    
    private static func showBasicAlert(on vc: UIViewController, title: String, messsage: String?){
        
        DispatchQueue.main.async {
            let alert = UIAlertController(title: title, message: messsage, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: nil))
            vc.present(alert, animated: true)
        }
    }
    
}
// Show Validation Alerts
extension AlertManager{
    
    public static func showInvalidEmailAlert(on vc: UIViewController) {
        self.showBasicAlert(on: vc, title: "Invalid Email", messsage: "Please enter a valid email")
    }
    
    public static func showInvalidPasswordAlert(on vc: UIViewController) {
        self.showBasicAlert(on: vc, title: "Invalid Password", messsage: "Please enter a valid password")
    }
    
    public static func showInvalidUsernameAlert(on vc: UIViewController) {
        self.showBasicAlert(on: vc, title: "Invalid Username", messsage: "Please enter a valid username")
    }
}

// Show Registration Errors
extension AlertManager{
    
    public static func showRegistrationErrorAlert(on vc: UIViewController) {
        self.showBasicAlert(on: vc, title: "Unknown Registration Error", messsage: nil)
    }
    
    public static func showRegistrationErrorAlert(on vc: UIViewController, error: Error) {
        self.showBasicAlert(on: vc, title: "Unknown Registration Error", messsage: "\(error.localizedDescription)")
    }
}

// Show Login Errors
extension AlertManager{
    
    public static func showSignInErrorAlert(on vc: UIViewController) {
        self.showBasicAlert(on: vc, title: "Unknown Sign In Error", messsage: nil)
    }
    
    public static func showSignInErrorAlert(on vc: UIViewController, error: Error) {
        self.showBasicAlert(on: vc, title: "Sign In  Error", messsage: "\(error.localizedDescription)")
    }
}

// Show Logout Errors
extension AlertManager{

    public static func showSignOutErrorAlert(on vc: UIViewController, error: Error) {
        self.showBasicAlert(on: vc, title: "Unknown Sign Out  Error", messsage: "\(error.localizedDescription)")
    }
}

// Show Forgot Password Errors
extension AlertManager{
    
    public static func showPasswordResetSent(on vc: UIViewController) {
        self.showBasicAlert(on: vc, title: "Password Reset Sent", messsage: nil)
    }

    public static func showErrorSendingPasswordReset(on vc: UIViewController, error: Error) {
        self.showBasicAlert(on: vc, title: "Error Sending Password Reset", messsage: "\(error.localizedDescription)")
    }
}

// Show Fetching User Errors
extension AlertManager{
    
    public static func showUnknownFetchingUserError(on vc: UIViewController) {
        self.showBasicAlert(on: vc, title: "Unknown Error Fetching User", messsage: nil)
    }
    
    public static func showFetchingUserError(on vc: UIViewController, error: Error) {
        self.showBasicAlert(on: vc, title: "Error Fetching User", messsage: "\(error.localizedDescription)")
    }
}


