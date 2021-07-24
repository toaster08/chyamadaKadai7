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

extension SubtractionViewController: ViewDelegate {
    func didTappedButton(firstTextField: UITextField, secondTextField: UITextField) -> String {
        guard let firstNumber = Int(firstTextField.text ?? ""),
              let secondNumber = Int(secondTextField.text ?? "") else {
            return ""
        }

        let subtractResult = Calculation().apply(firstNumber, secondNumber) { $0 - $1 }
        return String(describing: subtractResult)
    }
}
