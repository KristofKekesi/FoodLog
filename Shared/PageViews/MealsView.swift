//
//  MealsView.swift
//  FoodLog
//
//  Created by Kristóf Kékesi on 2022. 02. 12..
//

import SwiftUI

struct MealsView: View {
	@State var showAddMealSheat = false
	
    var body: some View {
		NavigationView{
			Text("Meals")
				.navigationTitle("Meals")
				.toolbar {
					ToolbarItem(placement: .navigationBarLeading) {
						HStack {
							Menu {
								Label("Meals", systemImage: "fork.knife")
								Label("Ingredients", systemImage: "leaf")
								Label("Nutrients", systemImage: "heart")
							} label: {
								Image(systemName: "ellipsis.circle")
							}
						}
					}
					ToolbarItem(placement: .navigationBarTrailing) {
						HStack {
							Button{
								showAddMealSheat = true
							} label: {
								Image(systemName: "plus").padding()
							}
							Image(systemName: "bookmark")
						}
					}
				}
		}.sheet(isPresented: $showAddMealSheat, content: {AddMealView()})
    }
}

struct MealsView_Previews: PreviewProvider {
    static var previews: some View {
		MealsView().previewDisplayName("MealsView")
    }
}
