import SwiftUI

struct SearchBarComponent {
    // MARK: - ™PROPERTIES™
    ///™━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    @Binding var text: String
    @Binding var isInSearchMode: Bool
    //™━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━«
    
    ///™━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    
}
// MARK: END OF: SearchBarComponent

/// @━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

extension SearchBarComponent: View {
    
    // MARK: ™━━━━━━━━━━━━ [body] ━━━━━━━━━━━━™
    var body: some View {
        
        //━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
        HStack(alignment: .center, spacing: nil, content: {
            
            TextField("Search...", text: $text)
                .padding(8)
                .padding(.horizontal, 24)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                // MARK: - overlay
                //™™|━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
                .overlay(
                    //∆..........
                    HStack(content: {
                        
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0,
                                   maxWidth: .infinity,
                                   alignment: .leading)
                            .padding(.leading, 8)
                    })
                    /// ∆ END OF: HStack
                )
                // MARK: - onTapGesture
                //™™|━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
                ///∆ ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
                ///  • When the search bar is tapped, it will show the search view
                ///  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
                .onTapGesture {
                    //∆..........
                    isInSearchMode = true
                }
            //™™|━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
            
            // MARK: -∆  Horizontal Button(Cancel) To render back to false  ━━━━━━━
            if isInSearchMode {
                Button(action: {
                    //∆..........
                    isInSearchMode = false
                    /// ™ Empties the text
                    text = ""
                    
                    /// ™ To dismiss keyboard with `UIKit` extension
                    UIApplication.shared.endEditing()
                }) {
                    //∆━━━━━━ LABEL ━━━━━━
                    Text("Cancel")
                        .foregroundColor(.black)
                }
                /// ∆ END OF: Button(Cancel)
                .padding(.trailing, 8)
                .transition(.move(edge: .trailing))
                .animation(.easeOut(duration: 0.1))
                //∆ HANGER ™👕™ ━━━━━━━━━━━━━━━━━
            }
            // ∆ END OF: if-statement
            
        })
        // MARK: ||END__PARENT-HSTACK||
        .padding()
        //━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    }
    // MARK: |||END OF: body|||
}
// MARK: END OF: SearchBarComponent

/// ™━━━━━━━━━━━━━━━━━━━━━━━━━━ ([ Preview ]) ━━━━━━━━━━━━━━━━━━━━━━━━━━™

// MARK: - Preview ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
struct SearchBarComponent_Previews: PreviewProvider {
    
    static var previews: some View {
        
        SearchBarComponent(
            text: .constant(""),
            isInSearchMode: .constant(true))
        //.padding(.all, 100)
        //.preferredColorScheme(.dark)
        //.previewLayout(.sizeThatFits)
        //.previewLayout(.fixed(width: 360, height: 720))
        // The preview below is for like a card
        //.previewLayout(.fixed(width: 440, height: 270))
    }
}

/// @━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

