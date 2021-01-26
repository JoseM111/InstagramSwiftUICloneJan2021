import SwiftUI

struct UserStatView: View {
    /// MARK: - ™PROPERTIES™
    ///™━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    
    //™━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━«
    
    ///™━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    
    // MARK: -∆  body •••••••••
    var body: some View {
        
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
            
            Text("2")
                .font(.system(size: 15, weight: .semibold))
            
            Text("Followers")
                .font(.system(size: 15))
        })
        // MARK: ||END__PARENT-VSTACK||
        .frame(width: 80, alignment: .center)
    }
    // MARK: |||END OF: body|||
}
// MARK: END OF: UserStatView
