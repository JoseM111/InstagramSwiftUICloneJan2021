import SwiftUI

struct UserStatView: View {
    /// MARK: - ™PROPERTIES™
    ///™━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    let value: Int
    let title: String
    ///™━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    
    // MARK: -∆  body •••••••••
    var body: some View {
        
        VStack(alignment: .center, spacing: nil, content: {
            
            Text("\(value)")
                .font(.system(size: 15, weight: .semibold))
            
            Text(title)
                .font(.system(size: 15))
        })
        // MARK: ||END__PARENT-VSTACK||
        .frame(width: 80, alignment: .center)
    }
    // MARK: |||END OF: body|||
}
// MARK: END OF: UserStatView

/// ™━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ ([ Preview ]) ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━™

// MARK: - Preview
struct UserStatView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        UserStatView(value: 2, title: "Followers")//.padding(.all, 100)
        //.preferredColorScheme(.dark)
        //.previewLayout(.sizeThatFits)
        //.previewLayout(.fixed(width: 360, height: 720))
        // The preview below is for like a card
        //.previewLayout(.fixed(width: 440, height: 270))
    }
}

/// @━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
