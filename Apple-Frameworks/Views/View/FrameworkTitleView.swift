//
//  FrameworkTitleView.swift
//  Apple-Frameworks
//
//  Created by Adnan Bakaev  on 13/04/2025.
//

import SwiftUI

struct FrameworkTitleView: View {
    let framework: Framework

    var body: some View {
        HStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 70, height: 70)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
                .padding()
                .foregroundColor(Color(.label))
        }
    }
}


struct FrameworkTitle_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkTitleView(framework: MockData.sampleFramework)
    }
}
