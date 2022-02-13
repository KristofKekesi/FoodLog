//
//  Units.swift
//  FoodLog
//
//  Created by Kristóf Kékesi on 2022. 02. 12..
//

import Foundation

protocol UnitIsMassOrVolume {}

extension UnitMass: UnitIsMassOrVolume {}
extension UnitVolume: UnitIsMassOrVolume {}

struct Unit {
	let name: String
	let sign: String
	let type: String
	let unit: UnitIsMassOrVolume // will be a UnitMass or a UnitVolume
}

var Units: [Unit] = [
	Unit(name: "Kilogramm", sign: "kg", type: "mass", unit: UnitMass.kilograms),
	Unit(name: "Dekagramm", sign: "dkg", type: "mass", unit: UnitMass.decigrams),
	Unit(name: "Gramm", sign: "g", type: "mass", unit: UnitMass.grams),
	
	Unit(name: "Liter", sign: "l", type: "fluid", unit: UnitVolume.liters),
	Unit(name: "Deciliter", sign: "dl", type: "fluid", unit: UnitVolume.deciliters),
	Unit(name: "Milliliter", sign: "ml", type: "fluid", unit: UnitVolume.milliliters),
	Unit(name: "Gallon", sign: "gal", type: "fluid", unit: UnitVolume.gallons),
	Unit(name: "Quart", sign: "qt", type: "fluid", unit: UnitVolume.quarts),
	Unit(name: "Pint", sign: "pt", type: "fluid", unit: UnitVolume.pints),
	Unit(name: "Cup", sign: "cp", type: "fluid", unit: UnitVolume.cups)
]
