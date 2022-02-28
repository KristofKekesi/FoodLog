//
//  InfoPaneView.swift
//  FoodLog
//
//  Created by Kristóf Kékesi on 2022. 02. 27..
//

import SwiftUI

struct InfoPaneView: View {
	var title: String
	var content: String
	var response: AnyView
	var colors: [Color]
	
    var body: some View {
		ZStack {
			AngularGradient(colors: colors, center: .center)
	VStack(alignment: .leading, spacing: 15) {
		Text(title)
			.font(.system(size: 24, weight: .bold))
			.foregroundStyle(.primary)
			Text(content)
			.foregroundStyle(.secondary)
		response
	}.padding(20)
				.frame(minWidth: 0, idealWidth: .infinity, maxWidth: .infinity)
		.background(.ultraThinMaterial)
		}
    }
}

struct InfoPaneView_Previews: PreviewProvider {
    static var previews: some View {
		InfoPaneView(title: "Testing this View", content: "This view displays some statements about the title it was given.", response: AnyView(Text("aa")), colors: [.red, .blue, .green]).previewDisplayName("InfoPaneView")
    }
}
