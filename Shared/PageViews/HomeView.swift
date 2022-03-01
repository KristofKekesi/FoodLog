//
//  HomeView.swift
//  FoodLog
//
//  Created by Kristóf Kékesi on 2022. 02. 12..
//

import SwiftUI
import HealthKit

struct HomeView: View {
	@State var showFavouriteMealsSheet: Bool = false
	
    var body: some View {
		NavigationView {
			ScrollView {
				VStack(alignment: .leading) {
					if ((HealthKitData().healthStore?.supportsHealthRecords()) != nil) {
						InfoPaneView(
							title: "Get Started",
							content: "Nutrients uses Apple Health to add your consumed nutrients.",
							response: AnyView(Button("Grant access") {}.accentColor(.pink).buttonStyle(.borderedProminent)
						),
							colors: [.red, .pink, .orange, .yellow, .purple, .indigo, .pink, .red])
							.cornerRadius(16)
							.padding(EdgeInsets(top: -5, leading: 15, bottom: 15, trailing: 15))
					}
					Text("Favourites")
						.font(.title)
						.padding(EdgeInsets(top: 0, leading: 28, bottom: 0, trailing: 0))
					InfoPaneView(
						title: "Add meals",
						content: "Create a new meal or browse in the catalog.",
						response: AnyView(
							HStack {
								Button("Create meal") {}.accentColor(.yellow).buttonStyle(.borderedProminent).foregroundColor(.black.opacity(0.7))
								Button("Catalog") {}.accentColor(.secondary).buttonStyle(.bordered)
							}
						),
						colors: [.yellow, .secondary, .green, .secondary, .secondary, .yellow]
					)
						.cornerRadius(16)
						.padding(EdgeInsets(top: -15, leading: 15, bottom: 0, trailing: 15))
					InfoPaneView(
						title: "Favourites",
						content: "Add meals to favourites for easier access.",
						response: AnyView(
							Button("Add to Favourites") {}.accentColor(.yellow).buttonStyle(.borderedProminent).foregroundColor(.black.opacity(0.7))
						),
						colors: [.yellow, .secondary, .green, .secondary, .secondary, .yellow]
					)
						.cornerRadius(16)
						.padding(EdgeInsets(top: 0, leading: 15, bottom: 15, trailing: 15))
					Text("Hardcoded")
						.font(.title)
						.padding(EdgeInsets(top: 0, leading: 28, bottom: 0, trailing: 0))
					HStack {
						MealView(meal: Meal(name: "Omlette", subtitle: "3x 🥚", icon: "🍳", color: .orange, ingredients: []))
						MealView(meal: Meal(name: "Omlette", subtitle: "4x 🥚", icon: "🍳", color: .orange, ingredients: []))
					}.padding(EdgeInsets(top: -15, leading: 15, bottom: 0, trailing: 15))
					HStack {
						MealView(meal: Meal(name: "Cereal", subtitle: "With 🍫 rice", icon: "🥣", color: .gray, ingredients: []))
						MealView(meal: Meal(name: "Cereal", subtitle: "With 🍫 pillows", icon: "🥣", color: .gray, ingredients: []))
					}.padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
					HStack {
						Button {
							HealthKitData().addHKData([
								Nutrient(name: "Energy", nutrient: .dietaryEnergyConsumed, quantity: HKQuantity(
									unit: HKUnit.kilocalorie(), doubleValue: 488)),
								Nutrient(name: "Fat", nutrient: .dietaryFatTotal, quantity: HKQuantity(
									unit: HKUnit.gram(), doubleValue: 21.1)),
								Nutrient(name: "Carbohydrates", nutrient: .dietaryCarbohydrates, quantity: HKQuantity(
									unit: HKUnit.gram(), doubleValue: 61.6)),
								Nutrient(name: "Protein", nutrient: .dietaryProtein, quantity: HKQuantity(
									unit: HKUnit.gram(), doubleValue: 9.8))
							])
						} label: {
							MealView(meal: Meal(name: "Pasta", subtitle: "Soba", icon: "🥡", color: .brown, ingredients: []))
						}
						MealView(meal: Meal(name: "Cookie", subtitle: "Fortune cookie", icon: "🥠", color: .yellow, ingredients: []))
					}.padding(EdgeInsets(top: 0, leading: 15, bottom: 15, trailing: 15))
				}.navigationTitle("Nutrients")
			}.toolbar {
				ToolbarItem(placement: .navigationBarTrailing) {
					Button {
					} label: {
						Image(systemName: "bookmark")
					}
			 }
			}
		}.sheet(isPresented: $showFavouriteMealsSheet, content: {})
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
		HomeView().previewDisplayName("HomeView")
    }
}
