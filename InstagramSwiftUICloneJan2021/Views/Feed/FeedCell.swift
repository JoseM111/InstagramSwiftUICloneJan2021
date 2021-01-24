import SwiftUI

struct FeedCell {
    // MARK: - ™PROPERTIES™
    ///™━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    let captionTxt: String = "All men have limits. They learn what they are and learn not to exceed them. I ignore mine!"
    let sfSymbolList: [String] = ["heart", "bubble.right", "paperplane"]
    //™━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━«
    
    ///™━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    
}
// MARK: END OF: FeedCell

/// @━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

extension FeedCell: View {
    
    // MARK: ™━━━━━━━━━━━━ [body] ━━━━━━━━━━━━™
    var body: some View {
        
        //━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
        VStack(alignment: .leading, spacing: nil, content: {
            
            // MARK: -∆  User info  ━━━━━━━━━━━━━━━━━━━
            HStack {
                
                /// ™ Profile-Picture
                Image("hood-thanos")
                    .circleImageFrame(aspectR: .fill,
                                      frameW: 35, frameH: 35)
                
                /// ™ Profile-name
                Text("Hood Thanos")
                    .font(.system(size: 14, weight: .semibold))
            }
            /// ∆ END OF: HStack
            .padding(.leading, 4)
            //∆ HANGER ™👕™ ━━━━━━━━━━━━━━━━━
            
            // MARK: -∆  Post Image  ━━━━━━━━━━━━━━━━━━━
            Image("thanos-post")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxHeight: 440)
                .clipped()
            //∆ HANGER ™👕™ ━━━━━━━━━━━━━━━━━
            
            // MARK: -∆  Button  ━━━━━━━━━━━━━━━━━━━
            HStack(spacing: 15) {
                
                ForEach(sfSymbolList, id: \.self) { sfSymbol in
                    //∆..........
                    ButtonUIScreen(actionCompletion: {
                        //∆..........
                        
                    },
                    //∆..........
                    sfSymbolStr: sfSymbol
                    )
                    /// ∆ END OF: Button
                }
                /// ∆ END OF: ForEach
               /**
                ButtonUIScreen(actionCompletion: {
                    //∆..........
                    
                },
                //∆..........
                sfSymbolStr: "heart"
                )
                
                ButtonUIScreen(actionCompletion: {
                    //∆..........
                    
                },
                //∆..........
                sfSymbolStr: "bubble.right"
                )
                
                ButtonUIScreen(actionCompletion: {
                    //∆..........
                    
                },
                //∆..........
                sfSymbolStr: "paperplane"
                )
                */
            }
            /// ∆ END OF: HStack
            .modifier(ButtonStackModifierView())
            //∆ HANGER ™👕™ ━━━━━━━━━━━━━━━━━
            
            // MARK: -∆  Likes count  ━━━━━━━━━━━━━━━━━━━
            Text("3 likes")
                .font(.system(size: 14, weight: .semibold))
                .padding(.leading, 8)
                .padding(.bottom, 2)
            
            // MARK: -∆  Caption  ━━━━━━━━━━━━━━━━━━━
            HStack {
                
                Text("batman")
                    .font(.system(size: 14, weight: .semibold)) +
                    Text(" \(captionTxt)")
                    .font(.system(size: 14))
            }
            /// ∆ END OF: HStack
            .padding(.horizontal, 8)
            //∆ HANGER ™👕™ ━━━━━━━━━━━━━━━━━
            
            // MARK: -∆  Days since post  ━━━━━━━━━━━━━━━━━━━
            Text("2d")
                .font(.system(size: 14))
                .foregroundColor(.gray)
                .padding(.leading, 8)
                .padding(.top, -2)

        })
        // MARK: ||END__PARENT-VSTACK||
        
        //━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    }
    // MARK: |||END OF: body|||
}
// MARK: END OF: FeedCell

/// ™━━━━━━━━━━━━━━━━━━━━━━━━━━ ([ Preview ]) ━━━━━━━━━━━━━━━━━━━━━━━━━━™

// MARK: - Preview ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
struct FeedCell_Previews: PreviewProvider {
    
    static var previews: some View {
        
        FeedCell()//.padding(.all, 100)
        //.preferredColorScheme(.dark)
        //.previewLayout(.sizeThatFits)
        .previewLayout(.fixed(width: 360, height: 720))
        // The preview below is for like a card
//        .previewLayout(.fixed(width: 440, height: 270))
    }
}

/// @━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

