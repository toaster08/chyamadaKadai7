//
//  GreenView.swift
//  chyamadaKadai7
//
//  Created by toaster on 2021/07/22.
//

import UIKit

final class SubtractionView: UIView {
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
        guard let view = Bundle.main.loadNibNamed("SubtractionView", owner: self, options: nil)?.first as? UIView else {
            return
        }
        view.frame = self.bounds
        self.addSubview(view)
    }

    @IBAction private func subtractionButton(_ sender: Any) {
        print("GreenViewTapped")
        resultLabel.text = self.delegate?.didTappedButton(firstTextField: firstTextField,
                                                          secondTextField: secondTextField)

        firstTextField.resignFirstResponder()
        secondTextField.resignFirstResponder()
    }
}
