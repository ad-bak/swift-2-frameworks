import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    @State private var isShowingSafariView = false

    var body: some View {
        VStack {
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding(.horizontal)

            Spacer()

            Button {
                isShowingSafariView = true
            } label: {
                Label("Learn More", systemImage: "book.fill")
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
//            .buttonBorderShape(.capsule)
            .tint(.red)
        }
        .fullScreenCover(
            isPresented: $isShowingSafariView,
            content: {
                SafariView(
                    url: URL(string: framework.urlString) ?? URL(
                        string: "www.apple.com"
                    )!

                )
            }
        )

    }
}

#Preview {
    FrameworkDetailView(
        framework: MockData.frameworks[4],
    )
}
