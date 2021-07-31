//
//  TestGreenViewController.swift
//  chyamadaKadai7
//
//  Created by toaster on 2021/07/22.
//

import UIKit

final class SubtractionViewController: UIViewController {
    private var subtractionView: SubtractionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        subtractionView = SubtractionView(frame: view.bounds)
        subtractionView.delegate = self
        view.addSubview(subtractionView)
    }
}

extension SubtractionViewController: CalculationViewDelegate {
    func didTappedButton(firstText: String, secondText: String) {
        guard let firstNumber = Int(firstText),
              let secondNumber = Int(secondText) else {
            subtractionView.configure(result: "")
            return
        }

        let subtractResult = Calculation().apply(firstNumber, secondNumber) { $0 - $1 }
        subtractionView.configure(result: String(describing: subtractResult))
    }
}
