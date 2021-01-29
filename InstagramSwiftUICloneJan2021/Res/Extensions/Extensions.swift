import UIKit

/// @━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

extension UIApplication {
    
    // MARK: ™━━━━━━━━━━━━ [ UIApplication ] ━━━━━━━━━━━━™
    
    func endEditing() -> Void {
        //∆..........
        sendAction(#selector(UIResponder.resignFirstResponder),
                   to: nil, from: nil, for: nil)
    }
    /// ∆ END OF: endEditing ━━━━━
    
}
// MARK: END OF: UIApplication

/// @━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

