//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Adnan Bakaev  on 06/04/2025.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet { isShowingDetailView = true }
    }
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        //        GridItem(.flexible()),
    ]

    @Published var isShowingDetailView = false

}
