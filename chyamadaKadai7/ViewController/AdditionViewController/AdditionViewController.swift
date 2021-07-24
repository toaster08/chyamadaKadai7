//
//  TestViewController.swift
//  chyamadaKadai7
//
//  Created by toaster on 2021/07/22.
//

import UIKit

final class AdditionViewController: UIViewController {
    private var additionView: AdditionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        additionView = AdditionView(frame: view.bounds)
        additionView.delegate = self
        view.addSubview(additionView)
    }
}

extension AdditionViewController: ViewDelegate {
    func didTappedButton(firstTextField: UITextField, secondTextField: UITextField) -> String {
        guard let firstNumber = Int(firstTextField.text ?? ""),
              let secondNumber = Int(secondTextField.text ?? "") else {
            return ""
        }

        let addResult = Calculation().apply(firstNumber, secondNumber) { $0 + $1 }
        return String(describing: addResult)
    }
}
