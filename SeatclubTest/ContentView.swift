import SwiftUI

struct ContentView: View {
    @State private var showingReactNative = false
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            
            Button("Open React Native") {
                showingReactNative = true
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)
        }
        .padding()
        .sheet(isPresented: $showingReactNative) {
            ReactNativeView()
        }
    }
}

#Preview {
    ContentView()
}
