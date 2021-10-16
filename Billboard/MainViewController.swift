//
//  MainViewController.swift
//  Billboard
//
//  Created by 심민규 on 2021/10/16.
//

import UIKit

class MainViewController: UIViewController{

    
    @IBOutlet weak var billBoardScreen: UILabel!
    @IBOutlet weak var billBoardText: UITextField!
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var randomColorButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        billBoardScreen.font = UIFont.systemFont(ofSize: 100)
        billBoardScreen.textColor = .white
        billBoardScreen.text = "위에 글씨 입력!"
        billBoardScreen.textAlignment = .center
        billBoardText.text = "글씨를 입력해주세요"
        self.sendButton.setTitle("보내기", for: .normal)
        sendButton.titleLabel?.textColor = .black
        self.randomColorButton.setTitle("AA", for: .normal)
        randomColorButton.titleLabel?.textColor = .red
    }

    func changeLabelColorRandom(){
        let r : CGFloat = CGFloat.random(in: 0...1)
        let g : CGFloat = CGFloat.random(in: 0...1)
        let b : CGFloat = CGFloat.random(in: 0...1)
        
        billBoardScreen.textColor = UIColor(red: r, green: g, blue: b, alpha: 1)
    }
    
    @IBAction func tapped(_ sender: UITapGestureRecognizer) {
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            textField.resignFirstResponder()
            return true
        }
    }
    
    
    @IBAction func sendButtonClicked(_ sender: UIButton) {
        billBoardScreen.text = billBoardText.text
    }
    
    
    @IBAction func randomColorButtonClicked(_ sender: UIButton) {
        changeLabelColorRandom()
    }
    
}
