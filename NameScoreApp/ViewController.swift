//
//  ViewController.swift
//  NameScoreApp
//
//  Created by 河野隆 on 2020/07/17.
//  Copyright © 2020 河野隆. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier else {
            return
        }
        if identifier == "showReslt" {
            let resultVC = segue.destination as! ResultViewController
            resultVC.myName = self.nameText.text!
        }
    }
}

