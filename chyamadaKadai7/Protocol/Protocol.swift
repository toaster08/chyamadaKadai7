//
//  Protocol.swift
//  chyamadaKadai7
//
//  Created by toaster on 2021/07/24.
//

import UIKit

protocol CalculationViewDelegate: AnyObject {
    func didTappedButton(firstText: String, secondText: String)
}
