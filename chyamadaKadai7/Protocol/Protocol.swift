//
//  Protocol.swift
//  chyamadaKadai7
//
//  Created by toaster on 2021/07/24.
//

import UIKit

protocol ViewDelegate: AnyObject {
    func didTappedButton(firstTextField: UITextField, secondTextField: UITextField) -> String
}
