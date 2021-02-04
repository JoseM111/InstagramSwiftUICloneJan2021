import SwiftUI

typealias Ext_RegistrationLogoComponent = RegistrationView
/// @━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

extension Ext_RegistrationLogoComponent {
    
    // MARK: ™━━━━━━━━━━━━ [ Helper Function Component ] ━━━━━━━━━━━━™
    
    /// ™ logoComponent ━━━━━━━━━━━━━━
    var logoComponent: some View {
        //∆..........
        VStack {
            
            ZStack {
                
                // MARK: -(ZSTACK)-|IMAGE  ━━━━━━━━━━━━━━━━━━━
                Image("canva-instagram")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 300, height: 300)
                    .aspectRatio(contentMode: .fill)
                    .foregroundColor(.white)
                    .clipped()
//                    .padding(.top, 67)
                
                // MARK: -(ZSTACK)-|PHOTO TEXT  ━━━━━━━━━━━━━━━━━━━
                Text("Photo")
                    .foregroundColor(Color(.lightGray))
                    .font(.system(size: 20, weight: .semibold))
                    .padding(.top, 80)

                // MARK: -(VSTACK)-|INSTAGRAM PHOTO TEXT  ━━━━━━━━━━━━━━━━━━━
                Image("instagram-white-text")
                    .imageGridFormatter(aspectRatio: .fit, frameW: 120, frameH: 120)
                    .cornerRadius(50)
                    .padding(.top, 170)

            }
            .frame(width: 125, height: 100)
            /// --> : ZStack
            
        }
        /// ∆ END OF: VStack
    }
    /// ∆ END OF: logoComponent ━━━
}
// MARK: END OF: Ext_RegistrationLogoComponent

/// @━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
