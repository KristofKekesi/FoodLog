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
					ZStack {
						AngularGradient(colors: [.red, .orange, .yellow, .green, .blue, .purple, .red], center: .center)
							.frame(minWidth: 10, maxWidth: .infinity, minHeight: 200, idealHeight: 200, maxHeight: 200)
						VStack(alignment: .leading) {
							Text("Get started").foregroundStyle(.secondary).font(.system(size: 24, weight: .bold))
							Text("Grant permission to Health data.").foregroundStyle(.tertiary).font(.system(size: 16, weight: .bold))
						}.frame(minWidth: 10, maxWidth: .infinity, minHeight: 200, idealHeight: 200, maxHeight: 200).background(.ultraThinMaterial)
					}
					.cornerRadius(26)
					.padding(EdgeInsets(top: -5, leading: 15, bottom: 15, trailing: 15))
					}
					Text("Favourites")
						.font(.title)
						.padding(EdgeInsets(top: 0, leading: 28, bottom: 0, trailing: 0))
					ZStack {
						Color.accentColor
						VStack(alignment: .leading) {
							Text("Add to favourites").foregroundStyle(.secondary).font(.system(size: 24, weight: .bold))
							Text("A great place for your daily meals.").foregroundStyle(.tertiary).font(.system(size: 16, weight: .bold))
						}.frame(minWidth: 10, maxWidth: .infinity, minHeight: 100, idealHeight: 100, maxHeight: 100).background(.ultraThinMaterial)
					}
					.cornerRadius(26)
					.padding(EdgeInsets(top: -15, leading: 15, bottom: 15, trailing: 15))
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
				}.navigationTitle("FoodLog")
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
