//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by Adnan Bakaev  on 28/03/2025.
//

import SwiftUI

struct AFButton: View {
    var title: String
    
    init(_ title: String) {
        self.title = title
    }
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 200, height: 50)
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10)
            
    
    }
}

#Preview {
    AFButton("Learn More")
}
