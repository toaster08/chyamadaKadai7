//
//  ViewController.swift
//  chyamadaKadai7
//
//  Created by toaster on 2021/07/20.
//

import UIKit

final class PinkViewController: UIViewController {

    
    @IBOutlet private weak var firstTextField: UITextField!
    @IBOutlet private weak var secondTextField: UITextField!
    @IBOutlet private weak var additionButton: UIButton!
    @IBOutlet private weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        [firstTextField,secondTextField].forEach{
            $0.keyboardType = .numberPad
        }
        
        additionButton.addTarget(self,
                                 action: #selector(add),
                                 for: .touchUpInside)
        
        let tapGesture = UITapGestureRecognizer(
            target: self,
            action: #selector(didTapView))
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc private func didTapView(){
        view.endEditing(true)
    }
    
    @objc private func add(firstNumber:UITextField,secondNumber:UITextField){
        
        guard let firstNumber = Int(firstTextField.text!),
              let secondNumber = Int(secondTextField.text!) else {
            return
        }
        
        let total = firstNumber + secondNumber
        totalLabel.text = String(describing: total)
        
        firstTextField.resignFirstResponder()
        secondTextField.resignFirstResponder()
    }
}

