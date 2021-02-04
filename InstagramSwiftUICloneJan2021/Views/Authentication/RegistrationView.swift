import SwiftUI

struct RegistrationView {
    // MARK: - ™PROPERTIES™
    ///™━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    @State var email: String = ""
    @State var password: String = ""
    @State private var selectedImage: UIImage?
    @State private var registrationImage: Image?
    @State var imagePickerPresented: Bool = false
    @Environment(\.presentationMode) var mode
    //™━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━«
    let gradientBackgroundColor: LinearGradient = .init(
        gradient: Gradient(colors: [Color.purple, Color.blue]),
        startPoint: .top, endPoint: .bottom)
    ///™━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
}
// MARK: END OF: RegistrationView

/// @━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

extension RegistrationView: View {
    
    // MARK: ™━━━━━━━━━━━━ [body] ━━━━━━━━━━━━™
    var body: some View {
        
        //━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
        ZStack {
            
            // MARK: -(ZStack)-|BACKGROUND GRADIENT COLOR  ━━━━━━━━━━━━━━━━━━━
            gradientBackgroundColor
                .ignoresSafeArea()
            
            VStack {
                
                // MARK: -(ZSTACK)-|Button(Add-Photo)  ━━━━━━━━━━━━━━━━━━━
                ZStack {
                    
                    if let image = registrationImage {
                        //∆..........
                        image
                            .resizable()
                            .scaledToFill()
                            .frame(width: 140, height: 140)
                            .clipShape(Circle())
//                            .padding(.top, 65)
                        //∆..........
                    } else {
                        //∆..........
                        Button(action: { imagePickerPresented.toggle() }) {
                            //∆━━━━━━ LABEL ━━━━━━
                            logoComponent
                                .padding(.bottom, 70)
                        }
                        // MARK: - sheet
                        //™™|━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
                        .sheet(isPresented: $imagePickerPresented,
                               onDismiss: loadImage, content: {
                                //∆..........
                                ImagePicker(image: $selectedImage)
                               }
                        )
                        //™™|━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
                        /// --> : Button
                    }
                    /// --> : if-else
                }
                /// --> : ZStack
                
                // MARK: -∆  USER TEXT FIELDS  ━━━━━━━━━━━━━━━━━━━
                txtFieldComponent
                
                // MARK: -∆  Button(Sign-In)  ━━━━━━━━━━━━━━━━━━━
                Button(action: {  }) {
                    //∆━━━━━━ LABEL ━━━━━━
                    Text("Sign Up")
                        .modifier(
                            ButtonCustomFrame(
                                bgColor: Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)).opacity(0.70),
                                fgColor: .white,
                                frameWidth: 345,
                                frameHeight: 45))
                }
                .padding(.top, 10)
                /// --> : Button
                
                //ººº━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
                Spacer(minLength: 0) // Spaced Vertically
                //ººº━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
                
                // MARK: -(VSTACK)-|Button(BOTTOM LABEL)  ━━━━━━━━━━━━━━━━━━━
                ///∆ ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
                ///  • Will dismiss back to the prior view
                ///    when `sign In` is pressed
                ///  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
                Button(action: { mode.wrappedValue.dismiss() }) {
                    //∆━━━━━━ LABEL ━━━━━━
                    HStack(content: {
                        //∆..........
                        Text("Already have an account?")
                            .font(.system(size: 14))
                        
                        Text("Sign In")
                            .font(.system(size: 14, weight: .semibold))
                    })
                    .foregroundColor(.white)
                    /// --> : HStack
                }
                .padding(.top, 80)
                /// --> : NavigationLink
            }
            /// ∆ END OF: VStack
        }
        // MARK: ||END__PARENT-ZSTACK||
        
        //━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    }
    // MARK: |||END OF: body|||
}
// MARK: END OF: RegistrationView

/// ™━━━━━━━━━━━━━━━━━━━━━━━━━━ ([ Preview ]) ━━━━━━━━━━━━━━━━━━━━━━━━━━™

// MARK: - Preview ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
struct RegistrationView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        RegistrationView()//.padding(.all, 100)
        //.preferredColorScheme(.dark)
        //.previewLayout(.sizeThatFits)
        //.previewLayout(.fixed(width: 360, height: 720))
        // The preview below is for like a card
        //.previewLayout(.fixed(width: 440, height: 270))
    }
}

/// @━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

extension RegistrationView {
    
    // MARK: ™━━━━━━━━━━━━ [ Helper Function ] ━━━━━━━━━━━━™
    
    func loadImage() {
        //∆..........
        guard let selectedImage = selectedImage else { return }
        registrationImage = Image(uiImage: selectedImage)
    }
    /// ∆ END OF: loadImage ━━━━━
}
// MARK: END OF: UploadPostView

/// @━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
