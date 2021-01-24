//import SwiftUI
//
//typealias MyViewBuilders = View
///// @━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
//extension MyViewBuilders {
//
//    // MARK: ™━━━━━━━━━━━━ [ USER-CASE ] ━━━━━━━━━━━━™
//
//    @ViewBuilder
//    func ifLet<V, Transform: View>(value: V?, transform: (Self, V) -> Transform) -> some View {
//        //∆..........
//        if let value = value {
//            //∆..........
//            transform(self, value)
//        } else { self }
//    }
//    /// ∆ END OF: ifLet ━━━━━
//
//    @ViewBuilder
//    func ifElse<True: View, False: View>(condition: Bool, if ifTrue: (Self) -> True,
//                                         else elseFalse: (Self) -> False) -> some View {
//        //∆..........
//        if condition {
//            ifTrue(self)
//        } else { elseFalse(self) }
//    }
//    /// ∆ END OF: ifElse ━━━━━
//
//    @ViewBuilder
//    func `if`<Transform: View>(condition: Bool, transform: (Self) -> Transform) -> some View {
//        //∆..........
//        if condition {
//            transform(self)
//        } else { self }
//    }
//    /// ∆ END OF: ifElse ━━━━━
//
//}
//// MARK: END OF: MyViewBuilders
//
///// @━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
//
///**
// // EXAMPLE OF :`ifElse`
// `struct Test: View {`
//
// `var test = false`
//
// // MARK: -∆  body •••••••••
// `var body: some View {`
//
// Circle()
// .ifElse(condition: test) {
// $0.overlay(Circle())
// } else: { $0.overlay(Circle().strokeBorder(Color.blue)) }
// `}`
// `}`
// // MARK: END OF: Test
//
// // EXAMPLE OF :`if`
// `struct Test: View {`
//
// var test = false
//
// // MARK: -∆  body •••••••••
// var body: some View {
//
// Circle()
// .if(condition: test) {
// $0.overlay(Color.blue)
// }
// }
// `}`
// */
//
//
