import SwiftUI

struct UploadPostView {
    // MARK: - ™PROPERTIES™
    ///™━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    @State private var selectedImage: UIImage?
    @State var postImage: Image?
    @State var captionText: String = ""
    @State var imagePickerPresented: Bool = false
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
                Button(action: { imagePickerPresented.toggle() }) {
                    //∆━━━━━━ LABEL ━━━━━━
                    ZStack {
                        
                        Image("canva-instagram")
                            .resizable()
                            .renderingMode(.template)
                            .frame(width: 300, height: 300)
                            .aspectRatio(contentMode: .fill)
                            .foregroundColor(.gray)
                            .clipped()
                            .padding(.top, 67)
                        
                        Image("instagram-white-text")
                            .imageGridFormatter(aspectRatio: .fit, frameW: 120, frameH: 120)
                            .padding(.top, 240)
                            .cornerRadius(50)
                        
                        Text("Photo")
                            .foregroundColor(Color(.lightGray))
                            .font(.system(size: 20, weight: .semibold))
                            .padding(.top, 150)
                    }
                    /// ∆ END OF: ZStack
                    .frame(width: 200, height: 200)
                    .padding(.top, 220)
                }
                /// ∆ END OF: BUTTON
                // MARK: - sheet
                //™™|━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
                .sheet(isPresented: $imagePickerPresented,
                       onDismiss: loadImage, content: {
                    //∆..........
                    ImagePicker(image: $selectedImage)
                })
                //™™|━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
                ///∆ ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
                ///  • Adds the photo selected from the image picker
                ///  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
            } else if let image = $postImage {
                //∆..........
                UploadPostShareWithBtnComponent(
                    postImage: image,
                    captionText: $captionText)
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

extension UploadPostView {
    
    // MARK: ™━━━━━━━━━━━━ [ Helper Function ] ━━━━━━━━━━━━™
    
    func loadImage() {
        //∆..........
        guard let selectedImage = selectedImage else { return }
        postImage = Image(uiImage: selectedImage)
    }
    /// ∆ END OF: loadImage ━━━━━
}
// MARK: END OF: UploadPostView

/// @━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
