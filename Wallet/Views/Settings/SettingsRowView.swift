//
//  SettingsRowView.swift
//  Wallet
//
//  Created by Kamil Książek on 10/08/2022.
//

import SwiftUI

struct SettingsRowView: View {
    //MARK: properties
    var name: String
    var text: String
    
    var body: some View {
        VStack{
            Divider().padding(.vertical, 4)
            HStack{
                Text(name).foregroundColor(Color.secondary)
                Spacer()
                Text(text)
            }
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "name", text: "text")
            .previewLayout(.sizeThatFits)
    }
}
