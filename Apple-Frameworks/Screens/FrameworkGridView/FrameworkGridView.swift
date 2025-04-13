//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Adnan Bakaev  on 24/03/2025.
//

import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewModel = FrameworkGridViewModel()

    var body: some View {
        NavigationStack {
            List {
                ForEach(MockData.frameworks) { framework in
                    NavigationLink(value: framework) {
                        FrameworkTitleView(framework: framework)
                    }
                }
            }
            .navigationTitle(" Frameworks")
            .navigationDestination(for: Framework.self) { framework in
                FrameworkDetailView(framework: framework)
            }
        }
    }
}

#Preview {
    FrameworkGridView()
}
