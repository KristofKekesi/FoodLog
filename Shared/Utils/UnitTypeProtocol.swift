//
//  UnitTypeProtocol.swift
//  FoodLog
//
//  Created by Kristóf Kékesi on 2022. 02. 20..
//

import Foundation

protocol UnitIsMassOrVolume {}

extension UnitMass: UnitIsMassOrVolume {}
extension UnitVolume: UnitIsMassOrVolume {}
