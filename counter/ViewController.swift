//
//  ViewController.swift
//  counter
//
//  Created by Дмитрий Жуков on 12/17/23.
//

import UIKit

class ViewController: UIViewController {
    var count = 0
    @IBOutlet weak var lable: UILabel!
    
    @IBOutlet weak var button: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func countButton(_ sender: Any) {
       count += 1
        self.lable.text = "Значение счетчика: \(count)"
    }
    
}

