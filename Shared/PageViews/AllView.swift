//
//  AllView.swift
//  FoodLog
//
//  Created by Kristóf Kékesi on 2022. 02. 12..
//

import SwiftUI

struct AllView: View {
	@State var page: String = "meals"
	@State var showAddNewSheat: Bool = false
	
    var body: some View {
		NavigationView{
			VStack {
				if (page == "meals") {
					AllMealsView()
				} else if (page == "ingredients") {
					Text("ingredients")
				} else if (page == "nutrients") {
					Text("nutrients")
				}
			}
				.navigationTitle("Meals")
				.toolbar {
					ToolbarItem(placement: .navigationBarLeading) {
						HStack {
							Menu {
								Button {
									page = "meals"
								} label: {
									Label("Meals", systemImage: "fork.knife")
								}.disabled(page == "meals")
								Button {
									page = "ingredients"
								} label: {
									Label("Ingredients", systemImage: "leaf")
								}.disabled(page == "ingredients")
								Button {
									page = "nutrients"
								} label: {
									Label("Nutrients", systemImage: "heart")
								}.disabled(page == "nutrients")
							} label: {
								Image(systemName: "ellipsis.circle")
							}
						}
					}
					ToolbarItem(placement: .navigationBarTrailing) {
						HStack {
							Button{
								showAddNewSheat = true
							} label: {
								Image(systemName: "plus").padding()
							}.disabled(page == "nutrients")
							Image(systemName: "bookmark")
						}
					}
				}
		}.sheet(isPresented: $showAddNewSheat, content: {AddMealView()})
    }
}

struct MealsView_Previews: PreviewProvider {
    static var previews: some View {
		AllView().previewDisplayName("AllView")
    }
}
