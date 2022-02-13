//
//  CheckView.swift
//  FoodLog
//
//  Created by Kristóf Kékesi on 2022. 02. 13..
//

import SwiftUI

struct CheckView: View {
	@State var state: Bool = false
	var title: String
	var subtitle: String
	
    var body: some View {
		Button {
			state = !state
		} label: {
			HStack{
				Image(systemName: state ? "checkmark.square.fill" : "square").foregroundColor(state ? .accentColor : .primary).font(.system(size: 22))
				Text(title).foregroundColor(.primary)
				Spacer()
				Text(subtitle).foregroundColor(.secondary)
			}
		}
	}
}
	
struct CheckView_Previews: PreviewProvider {
    static var previews: some View {
		CheckView(title: "Test", subtitle: "Subtitle").previewDisplayName("CheckView")
    }
}
