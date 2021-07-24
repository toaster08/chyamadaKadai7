//
//  CalclationModelViewController.swift
//  chyamadaKadai7
//
//  Created by toaster on 2021/07/24.
//

import Foundation

struct Calculation {
    func apply(_ firstNumber: Int, _ secondNumber: Int, calc: (Int, Int) -> Int) -> Int {
        let result = calc(firstNumber, secondNumber)
        return result
    }
}
