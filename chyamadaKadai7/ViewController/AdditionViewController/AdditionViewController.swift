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

extension AdditionViewController: CalculationViewDelegate {
    func didTappedButton(firstText: String, secondText: String) {
        guard let firstNumber = Int(firstText),
              let secondNumber = Int(secondText) else {
            additionView.configure(result: "")
            return
        }

        let addResult = Calculation().apply(firstNumber, secondNumber) { $0 + $1 }
        additionView.configure(result: String(describing: addResult))
    }
}
