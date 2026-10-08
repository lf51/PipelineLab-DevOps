import SwiftUI
import Playgrounds


struct ContentView: View {
    @State private var counter = TapCounter()

    var body: some View {
        VStack(spacing: 20) {
            Text("Taps: \(counter.count)")
                .font(.largeTitle)
            Button("Tap me") {
                counter.tap()
            }
            .buttonStyle(.borderedProminent)
            Button("Reset") {
                counter.reset()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
