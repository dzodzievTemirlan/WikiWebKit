//
//  ViewController.swift
//  WikiWebKIT
//
//  Created by Temirlan Dzodziev on 01.06.2020.
//  Copyright © 2020 Temirlan Dzodziev. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var uiButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
    @IBAction func webKitButtonPressed(_ sender: UIButton) {
        if textField.text!.isEmpty{
            print(0)
            let alert = UIAlertController(title: "Пусто!(", message: "Необходимо ввести запрос", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alert.addAction(action)
            present(alert,animated: true)
            return
        }else{
        performSegue(withIdentifier: "webViewSegue", sender: self)
            
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "webViewSegue"{
            let webKitVC = segue.destination as! WebKitViewController
            webKitVC.textFieldVC = textField.text
        }
    }

}
