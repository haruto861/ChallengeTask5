//
//  ViewController.swift
//  ChallengeTask5
//
//  Created by 松島悠人 on 2021/01/05.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var resultLabel: UILabel!

    @IBAction func didTapButton(_ sender: Any) {
        // 変数を最後に使用する為guard文
        guard let text1 = textField1.text, let number1 = Int(text1) else {
            presentAlert(message: "割られる数を入れてください")
            return
        }

        guard let text2 = textField2.text, let number2 = Int(text2) else {
            presentAlert(message: "割る数を入れてください")
            return
        }

        guard number2 == 0 else {
            resultLabel.text = "\(Double(number1) / Double(number2))"
            return
        }

        presentAlert(message: "割る数には0を入れないでください")
    }

    private func presentAlert(message: String) {
        let alert = UIAlertController(title: "課題5", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}
