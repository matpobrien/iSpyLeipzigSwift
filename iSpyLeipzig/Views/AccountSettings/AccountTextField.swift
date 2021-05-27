//
//  TextField.swift
//  iSpyLeipzig
//
//  Created by Mat on 27.05.21.
//

import SwiftUI

struct AccountTextField: View {
    let label: String
    let geometry: GeometryProxy
    let text: Binding<String>
    var body: some View {
        HStack{
            Spacer()
            TextField(label, text: text)
                .font(.system(size: 15, design: .monospaced))
                .padding(.leading, 10)
                .foregroundColor(.blue)
                .background(Color.white)
                .frame(width: geometry.size.width * 0.93, height: geometry.size.width * 0.075)
            Spacer()
        }
    }
}

struct AccountTextField_Previews: PreviewProvider {
    static var previews: some View {
        AccountSettingsView()
    }
}
