import SwiftUI

/// @━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

/// ™ typealias
typealias FeedCellButtonComponent = FeedCell
//™ ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

extension FeedCellButtonComponent {
    
    // MARK: ™━━━━━━━━━━━━ [ FeedCellButtonComponent ] ━━━━━━━━━━━━™
    
    func ButtonUIScreen(actionCompletion: @escaping () -> Void,
                                    sfSymbolStr: String) -> some View {
        //∆..........
        return Button(action: actionCompletion) {
            //∆━━━━━━ LABEL ━━━━━━
            Image(systemName: sfSymbolStr)
                .aspectRatio(contentMode: .fill)
                .font(.system(size: 20))
                .frame(width: 20, height: 20)
        }
    }
}
// MARK: END OF: FeedCellButtonComponent

/// @━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
