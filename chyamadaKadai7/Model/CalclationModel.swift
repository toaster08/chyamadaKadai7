//
//  CalclationModel.swift
//  chyamadaKadai7
//
//  Created by toaster on 2021/07/22.
//

import Foundation

struct CalculationModel {
    func apply(firstNumber: Int, secondNumber: Int, calc: (Int, Int) -> Int) -> Int {
        let result = calc(firstNumber, secondNumber)
        return result
    }
}
