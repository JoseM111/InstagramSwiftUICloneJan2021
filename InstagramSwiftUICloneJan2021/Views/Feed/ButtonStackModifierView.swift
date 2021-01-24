 import SwiftUI
 
/// @━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

struct ButtonStackModifierView: ViewModifier {
    
   // MARK: -∆  body •••••••••
    func body(content: Content) -> some View {
        //∆..........
        content
            .padding(4)
            .padding(.leading, 4)
            .font(.system(size: 14, weight: .semibold))
            .foregroundColor(.black)
    }
}
// MARK: END OF: ButtonStackModifierView

/// @━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
