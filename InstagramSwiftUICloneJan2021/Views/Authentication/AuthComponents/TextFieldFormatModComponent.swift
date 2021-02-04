 import SwiftUI

struct TextFieldFormatModComponent: ViewModifier {
    /// MARK: - ™PROPERTIES™
    ///™━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    
    //™━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━«
    
    ///™━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    
    // MARK: -∆  body •••••••••
    func body(content: Content) -> some View {
        //∆..........
        content
            .padding()
            .padding(.leading)
            .background(Color(.init(white: 1, alpha: 0.15)))
            .cornerRadius(10)
            .foregroundColor(.white)
            .padding(.horizontal, 30)
    }
}
// MARK: END OF: TextFieldFormatMod

/// @━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

