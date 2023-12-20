//
//  ViewController.swift
//  counter
//
//  Created by Дмитрий Жуков on 12/17/23.
//

import UIKit

class ViewController: UIViewController {
    var count = 0
    var dateFormatter = DateFormatter()
    
    @IBOutlet weak var lable: UILabel!
    
    @IBOutlet weak var bbuttonForNull: UIButton!
    
    @IBOutlet weak var plusButton: UIButton!
    
    @IBOutlet weak var minusButton: UIButton!
    
    @IBOutlet weak var historyOfChanges: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        plusButton.backgroundColor = UIColor.red
        plusButton.tintColor = UIColor.white
        minusButton.backgroundColor = UIColor.blue
        minusButton.tintColor = UIColor.white
        historyOfChanges.text = "История изменений"
        historyOfChanges.textColor = UIColor.black
    }
    
    @IBAction func countButton(_ sender: Any) {
        
        count += 1
        var correntDate = Date()
        dateFormatter.dateFormat = "[dd.MM.yy в HH:mm:ss]: значение изменено на +1"
        var dateString = dateFormatter.string(from: correntDate)
        
        self.lable.text = "Значение счетчика: \(count)"
        self.historyOfChanges.text = dateString
        
    }
    
    @IBAction func countMinusButton(_ sender: Any) {
        var correntDate = Date()
        
        if count != 0 {
            count -= 1
            dateFormatter.dateFormat = "[dd.MM.yy в HH:mm:ss]: значение изменено на -1"
            var dateString = dateFormatter.string(from: correntDate)
            self.lable.text = "Значение счетчика: \(count)"
            self.historyOfChanges.text = dateString
        } else {
            dateFormatter.dateFormat = "[dd.MM.yy в HH:mm:ss]: попытка умньшить значение счетчика ниже 0"
            var dateString = dateFormatter.string(from: correntDate)
            self.lable.text = "Значение счетчика: 0"
            self.historyOfChanges.text = dateString
        }
    }
    @IBAction func actionForNull(_ sender: Any) {
        var correntDate = Date()
        count = 0
        dateFormatter.dateFormat = "[dd.MM.yy в HH:mm:ss]: значение счетчика обнулилось"
        var dateString = dateFormatter.string(from: correntDate)
        self.lable.text = "Значение счетчика: \(count)"
        self.historyOfChanges.text = dateString
       
    }
    
}

