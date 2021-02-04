import SwiftUI

typealias Ext_RegistrationTxtFieldComponent = RegistrationView

extension Ext_RegistrationTxtFieldComponent {
    
    // MARK: ™━━━━━━━━━━━━ [ Helper Function Component ] ━━━━━━━━━━━━™
    
    /// ™ txtFieldComponent ━━━━━━━━━━━━━━
    var txtFieldComponent: some View {
        //∆..........
        VStack(spacing: 25) {
            
            CustomTextFieldComponent(
                text: $email,
                placeholder: Text("Email"),
                sfImgName: "envelope")
                .modifier(TextFieldFormatModComponent())
            // --> : CustomTextFieldComponent
            
            // MARK: -∆  USER NAME  ━━━━━━━━━━━━━━━━━━━
            CustomTextFieldComponent(
                text: $email,
                placeholder: Text("Username"),
                sfImgName: "person")
                .modifier(TextFieldFormatModComponent())
            // --> : CustomTextFieldComponent
            
            // MARK: -∆  FULL NAME  ━━━━━━━━━━━━━━━━━━━
            CustomTextFieldComponent(
                text: $email,
                placeholder: Text("Fullname"),
                sfImgName: "person")
                .modifier(TextFieldFormatModComponent())
            // --> : CustomTextFieldComponent
            
            // MARK: -∆  USER SECURE FIELD  ━━━━━━━━━━━━━━━━━━━
            CustomSecureFieldComponent(
                text: $password,
                placeholder: Text("Password"))
                .modifier(TextFieldFormatModComponent())
            // --> : CustomSecureFieldComponent
        }
        .frame(width: 410)
        .padding(.bottom, 5)
        /// --> : VStack
    }
    /// ∆ END OF: txtFieldComponent ━━━
}
// MARK: END OF: Registration

/// @━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
