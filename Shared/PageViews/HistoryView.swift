//
//  HistoryView.swift
//  FoodLog
//
//  Created by Kristóf Kékesi on 2022. 02. 13..
//

import SwiftUI

struct HistoryView: View {
    var body: some View {
		NavigationView {
			Text("History")
				.navigationTitle("History")
				.toolbar {
					ToolbarItem(placement: .navigationBarLeading) {
						Menu {
							Label("Nutrients", systemImage: "heart")
							Label("Ingredients", systemImage: "leaf")
							Label("Meals", systemImage: "fork.knife")
						} label: {
							HStack {
								Image(systemName: "ellipsis.circle")
								Text("Nutrients")
							}
						}
					}
				}
				.toolbar {
					ToolbarItem(placement: .navigationBarTrailing) {
						Image(systemName: "line.3.horizontal.decrease")
					}
				}
		}
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
