//
//  AddViewController.swift
//  Ward List
//
//  Created by Shu Fujita on 2020/05/15.
//  Copyright © 2020 Fujita shu. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {
    @IBOutlet var englishTextField: UITextField!
    @IBOutlet var japaneseTextField: UITextField!
    
    var wordArray: [Dictionary<String, String>] = []
    let saveDate = UserDefaults.standard
    
    @IBAction func saveWord(){
        let wordDictionary = ["english": englishTextField.text!, "japanese":japaneseTextField.text!]
                      
        wordArray.append(wordDictionary)
        saveDate.set(wordArray, forKey: "WORD")
        
        let alart = UIAlertController(
            title: "保存完了",
            message: "単語の登録が完了しました",
            preferredStyle: .alert
        )
        alart.addAction(UIAlertAction(
            title: "OK",
            style: .default,
            handler: nil
        ))
        present(alart, animated: true, completion: nil)
        englishTextField.text = ""
        japaneseTextField.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if saveDate.array(forKey: "WORD") != nil {
            wordArray = saveDate.array(forKey: "WORD") as! [Dictionary<String, String>]
            
       
        }
    
       
        // Do any additional setup after loading the view.
    }
    }

