//
//  CheckBox.swift
//  B&T Bildungsteam Prototyp
//
//  Created by Antal Lepetit on 07.04.22.
//

import SwiftUI

struct CheckBoxView: View {
    @Binding var checked: Bool

    var body: some View {
        Image(systemName: checked ? "checkmark.square.fill" : "square.fill")
            .foregroundColor(checked ? Color("DarkColor") : Color("LightGrayColor"))
            .onTapGesture {
                self.checked.toggle()
            }
    }
}

struct CheckBoxView_Previews: PreviewProvider {
    struct CheckBoxViewHolder: View {
        @State var checked = false

        var body: some View {
            CheckBoxView(checked: $checked)
        }
    }

    static var previews: some View {
        CheckBoxViewHolder()
    }
}
