import SwiftUI

struct ReactNativeView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> ReactViewController {
        return ReactViewController()
    }
    
    func updateUIViewController(_ uiViewController: ReactViewController, context: Context) {
        // Updates can be handled here if needed
    }
}