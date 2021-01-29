import SwiftUI

struct UploadPostView {
    // MARK: - ™PROPERTIES™
    ///™━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    @State private var selectedImage: UIImage?
    @State var postImage: Image?
    @State var captionText: String = ""
    //™━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━«
    
    ///™━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    
}
// MARK: END OF: UploadPostView

/// @━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

extension UploadPostView: View {
    
    // MARK: ™━━━━━━━━━━━━ [body] ━━━━━━━━━━━━™
    var body: some View {
        
        //━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
        VStack {
            
            if postImage == nil {
                //∆..........
                Button(action: {  }) {
                    //∆━━━━━━ LABEL ━━━━━━
                    ZStack {
                        
                        Image("add_photo_icon")
                            .resizable()
                            .renderingMode(.template)
                            .frame(width: 280, height: 280)
                            .aspectRatio(contentMode: .fill)
                            .foregroundColor(.twitterBlue)
                            .clipped()
                            .padding(.top, 56)
                        
                        Text("Photo")
                            .foregroundColor(.twitterBlue)
                            .font(.system(size: 20, weight: .semibold))
                            .padding(.top, 150)
                    }
                    /// ∆ END OF: ZStack
                    .frame(width: 200, height: 200)
                    .padding(.top, 250)
                }
                /// ∆ END OF: BUTTON
                //∆..........
            } else {
                //∆..........
                HStack(alignment: .top) {
                    
                    // MARK: -∆  Image  ━━━━━━━━━━━━━━━━━━━
                    Image("wolverine")
                        .imageFormattedFrame(.fill, w: 96, h: 96)
                        .clipped()
                    
                    // MARK: -∆  Text-Field  ━━━━━━━━━━━━━━━━━━━
                    TextField("Enter your caption...", text: $captionText)
                        .fixedSize(horizontal: false, vertical: true)
                        .lineLimit(nil)
                }
                /// ∆ END OF: HStack
                .padding()
                
                // MARK: -∆  Button(Share)  ━━━━━━━━━━━━━━━━━━━
                Button(action: {  }) {
                    //∆━━━━━━ LABEL ━━━━━━
                    Text("Share")
                        .frame(width: 360, height: 25)
                    //∆ HANGER ™👕™ ━━━━━━━━━━━━━━━━━
                }
                /// ∆ END OF: Button
                .buttonShapeFrame(
                    horizontalPadding: -10, verticalPadding: 8,
                    bgColor: .twitterBlue2, fgColor: .white,
                    fontSize: 16, cornerR: 3)
                .padding()
                //∆ HANGER ™👕™ ━━━━━━━━━━━━━━━━━
            }
            /// ∆ END OF: if-else
            
            //ººº━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
            Spacer(minLength: 0) // Spaced Vertically
            //ººº━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
        }
        // MARK: ||END__PARENT-VSTACK||
        
        //━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    }
    // MARK: |||END OF: body|||
}
// MARK: END OF: UploadPostView

/// ™━━━━━━━━━━━━━━━━━━━━━━━━━━ ([ Preview ]) ━━━━━━━━━━━━━━━━━━━━━━━━━━™

// MARK: - Preview ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
struct UploadPostView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        UploadPostView()
        //.padding(.all, 100)
        //.preferredColorScheme(.dark)
        //.previewLayout(.sizeThatFits)
        //.previewLayout(.fixed(width: 360, height: 720))
        // The preview below is for like a card
        //.previewLayout(.fixed(width: 440, height: 270))
    }
}

/// @━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

