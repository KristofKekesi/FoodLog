//
//  HistoryView.swift
//  FoodLog
//
//  Created by Kristóf Kékesi on 2022. 02. 13..
//

import SwiftUI

struct HistoryView: View {
	@State private var page: String = "nutrients"
	
	@State private var historyFilterDateFrom: Date = Date()
	
    var body: some View {
		NavigationView {
			HStack {
				switch page {
				case "nutrients":
					ScrollView {
						ZStack {
							AngularGradient(colors: [.red, .pink, .orange, .yellow, .purple, .indigo, .pink, .red], center: .center)
								.frame(width: UIScreen.screenWidth - 30)
					VStack(alignment: .leading, spacing: 15) {
						Text("We don't want to reinwent the wheel.")
							.font(.system(size: 24, weight: .bold))
							.foregroundStyle(.primary)
							Text("Health provides charts and explanations about nutrients and more than 100 medical recordswwsesas. For the data we write we suggest using Health.")
							.foregroundStyle(.secondary)
						Button {
							UIApplication.shared.open(URL(string: 	"x-apple-health://browse/")!)
						} label: {
							Label("Open Health", systemImage: 	"heart.text.square.fill")
						}.accentColor(.pink).buttonStyle(.borderedProminent)
							.padding(EdgeInsets(top: 15, leading: 0, bottom: 0, trailing: 0))
					}.padding(20).frame(width: UIScreen.screenWidth - 30)
						.background(.ultraThinMaterial)
						}.cornerRadius(26)
							.padding(EdgeInsets(top: -5, leading: 15, bottom: 0, trailing: 15))
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
							}.disabled(page == "nutrients")
							Button{
								page = "ingredients"
							} label: {
								Label("Ingredients", systemImage: "leaf")
							}.disabled(page == "ingredients")
							Button{
								page = "meals"
							} label: {
								Label("Meals", systemImage: "fork.knife")
							}.disabled(page == "meals")
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
						Menu {
							Label("From", systemImage: "backward.end")
							Label("To", systemImage: "forward.end")
						} label: {
							Image(systemName: "line.3.horizontal.decrease")
						}.disabled(!(page != "nutrients"))
					}
				}
		}
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
		HistoryView().previewDisplayName("HistoryView")
    }
}
