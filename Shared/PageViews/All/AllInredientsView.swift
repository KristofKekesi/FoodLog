//
//  AllInredientsView.swift
//  FoodLog
//
//  Created by Kristóf Kékesi on 2022. 04. 16..
//

import SwiftUI

struct AllInredientsView: View {
    var body: some View {
		ScrollView{
			VStack{
				ForEach(0..<usedNutrients.count, id: \.self) { num in
					NutrientAccess(name: usedNutrientsName[num], nutrient: usedNutrients[num])
				}
			}
		}
    }
}

struct AllInredientsView_Previews: PreviewProvider {
    static var previews: some View {
        AllInredientsView()
    }
}
