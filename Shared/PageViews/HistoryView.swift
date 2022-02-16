//
//  HistoryView.swift
//  FoodLog
//
//  Created by Kristóf Kékesi on 2022. 02. 13..
//

import SwiftUI

struct HistoryView: View {
	@State private var page: String = "nutrients"
	
    var body: some View {
		NavigationView {
			HStack {
				switch page {
				case "nutrients":
					Button("Open health") {
						UIApplication.shared.open(URL(string: "x-apple-health://browse/")!)
					}
				case "ingredients":
					Text("Ingredients")
				case "meals":
					HistoryMealsView()
				default:
					Text("This shouldn't have happend.")
				}
			}
			.navigationTitle("History")
				.toolbar {
					ToolbarItem(placement: .navigationBarLeading) {
						Menu {
							Button{
								page = "nutrients"
							} label: {
								Label("Nutrients", systemImage: "heart")
							}
							Button{
								page = "ingredients"
							} label: {
								Label("Ingredients", systemImage: "leaf")
							}
							Button{
								page = "meals"
							} label: {
								Label("Meals", systemImage: "fork.knife")
							}
						} label: {
							HStack {
								Image(systemName: "ellipsis.circle")
								switch page {
							case "nutrients":
								Text("Nutrients")
							case "ingredients":
								Text("Ingredients")
							case "meals":
								Text("Meals")
							default:
								Text("")
							}
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
