//
//  View.swift
//  chyamadaKadai7
//
//  Created by toaster on 2021/07/22.
//

import UIKit

final class AdditionView: UIView {
    weak var delegate: CalculationViewDelegate?

    @IBOutlet private weak var firstTextField: UITextField! {
        didSet { firstTextField.keyboardType = .numberPad }
    }

    @IBOutlet private weak var secondTextField: UITextField! {
        didSet { secondTextField.keyboardType = .numberPad }
    }

    @IBOutlet private weak var resultLabel: UILabel!

    override init(frame: CGRect) {
        super.init(frame: frame)
        loadNib()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        loadNib()
    }

    private func loadNib() {
        guard let view = Bundle.main.loadNibNamed("AdditionView", owner: self, options: nil)?.first as? UIView else {
            return
        }
        view.frame = self.bounds
        self.addSubview(view)
    }

    @IBAction private func additionButton(_ sender: Any) {
        self.delegate?.didTappedButton(firstText: firstTextField.text ?? "",
                                       secondText: secondTextField.text ?? "")
        firstTextField.resignFirstResponder()
        secondTextField.resignFirstResponder()
    }

    func configure(result: String) {
        resultLabel.text = result
    }
}
