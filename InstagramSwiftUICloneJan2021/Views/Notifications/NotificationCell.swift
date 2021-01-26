import SwiftUI

struct NotificationCell {
    // MARK: - ™PROPERTIES™
    ///™━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    @State var showPostImage: Bool = true
    //™━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━«
    let captionTxt: String = "Liked one of your post."
    ///™━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    
}
// MARK: END OF: NotificationCell

/// @━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

extension NotificationCell: View {
    
    // MARK: ™━━━━━━━━━━━━ [body] ━━━━━━━━━━━━™
    var body: some View {
        
        //━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
        HStack(content: {
            
            // MARK: -∆  Circled Image  ━━━━━━━━━━━━━━━━━━━
            Image("black-panther2")
                .circleImageFrame(
                    aspectR: .fill,
                    frameW: 48,
                    frameH: 48)
            //∆ HANGER ™👕™ ━━━━━━━━━━━━━━━━━
            
            // MARK: -∆  Liked one post  ━━━━━━━━━━━━━━━━━━━
            Text("batman")
                .font(.system(size: 14, weight: .semibold)) +
                Text(" \(captionTxt)")
                .font(.system(size: 14))
            //∆ HANGER ™👕™ ━━━━━━━━━━━━━━━━━
            
            //ººº━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
            Spacer(minLength: 0) // Spaced Horizontally
            //ººº━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
            
            // MARK: -∆  showPostImage?  ━━━━━━━━━━━━━━━━━━━
            if showPostImage {
                Image("black-panther2")
                    .imageSquareFrame(aspectRatioFrameW: 48, aspectRatioFrameH: 48)

                //∆..........
            } else {
                //∆..........
                Button(action: {  }) {
                    //∆━━━━━━ LABEL ━━━━━━
                    Text("Follow")
                        
                }
                /// ∆ END OF: Button(Follow)
                .buttonCapsuleShapeFrame(
                    horizontalPadding: 20, verticalPadding: 8,
                    bgColor: .twitterBlue2, fgColor: .white,
                    fontSize: 14)

            }
            // ∆ END OF: if-else
            
            
        })
        // MARK: ||END__PARENT-HSTACK||
        .padding(.horizontal)
        .padding(.top, 15)
        //━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    }
    // MARK: |||END OF: body|||
}
// MARK: END OF: NotificationCell

/// ™━━━━━━━━━━━━━━━━━━━━━━━━━━ ([ Preview ]) ━━━━━━━━━━━━━━━━━━━━━━━━━━™

// MARK: - Preview ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
struct NotificationCell_Previews: PreviewProvider {
    
    static var previews: some View {
        
        NotificationCell()//.padding(.all, 100)
        //.preferredColorScheme(.dark)
        //.previewLayout(.sizeThatFits)
        //.previewLayout(.fixed(width: 360, height: 720))
        // The preview below is for like a card
        //.previewLayout(.fixed(width: 440, height: 270))
    }
}

/// @━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

