//
//  View.swift
//  chyamadaKadai7
//
//  Created by toaster on 2021/07/22.
//

import UIKit

protocol ViewDelegate: AnyObject {
    func didTappedButton(firstTextField: UITextField, secondTextField: UITextField) -> String
}

final class AdditionView: UIView {
    weak var delegate: ViewDelegate?

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
        print("Tapped")
        resultLabel.text = self.delegate?.didTappedButton(firstTextField: firstTextField,
                                                          secondTextField: secondTextField)
        firstTextField.resignFirstResponder()
        secondTextField.resignFirstResponder()
    }
}
