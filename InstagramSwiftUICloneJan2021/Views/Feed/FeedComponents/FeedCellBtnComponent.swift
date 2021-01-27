import SwiftUI

struct FeedCellBtnComponent: View {
    // MARK: - ™PROPERTIES™
    ///™━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    let symbolStr: String
    let actionCompletion: () -> Void
    ///™━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    
    var body: some View {
        
        Button(action: actionCompletion ) {
            //∆━━━━━━ LABEL ━━━━━━
            Image(systemName: symbolStr)
                .aspectRatio(contentMode: .fill)
                .font(.system(size: 20))
                .frame(width: 20, height: 20)
        }
        // MARK: ||END__PARENT-BUTTON||
    }
    // MARK: |||END OF: body|||
}
// MARK: END OF: FeedCellBtnComponent

/// ™━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ ([ Preview ]) ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━™

// MARK: - Preview
struct FeedCellBtnComponent_Previews: PreviewProvider {
    
    static var previews: some View {
        
        FeedCellBtnComponent(symbolStr: "house", actionCompletion: {})//.padding(.all, 100)
        //.preferredColorScheme(.dark)
        //.previewLayout(.sizeThatFits)
        //.previewLayout(.fixed(width: 360, height: 720))
        // The preview below is for like a card
        //.previewLayout(.fixed(width: 440, height: 270))
    }
}

/// @━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
