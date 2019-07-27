//
//  ConverterViewController.swift
//  Conversion Calculator UI
//
//  Created by Henry Sills on 7/12/19.
//  Copyright © 2019 Henry Sills. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {
    
    
    @IBOutlet weak var outputDisplay: UILabel!
    
    @IBOutlet weak var inputDisplay: UILabel!
    
    
    var number: Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func clearButton(_ sender: Any) {
        // alert.addAction(UIAlertAction(title: "clear", style: .default, handler: {
        //    (alertAction) in
        self.inputDisplay.text = ""
        self.outputDisplay.text = ""
    }
    
    @IBAction func button0(_ sender: Any) {
        inputDisplay.text = "0"
        number = Double(inputDisplay.text!)!
    }
    @IBAction func button1(_ sender: Any) {
        inputDisplay.text = "1"
        number = Double(inputDisplay.text!)!
    }
    @IBAction func button2(_ sender: Any) {
        inputDisplay.text = "2"
        number = Double(inputDisplay.text!)!
    }
    @IBAction func button3(_ sender: Any) {
        inputDisplay.text = "3"
        number = Double(inputDisplay.text!)!
    }
    @IBAction func button4(_ sender: Any) {
        inputDisplay.text = "4"
        number = Double(inputDisplay.text!)!
    }
    @IBAction func button5(_ sender: Any) {
        inputDisplay.text = "5"
        number = Double(inputDisplay.text!)!
    }
    @IBAction func button6(_ sender: Any) {
        inputDisplay.text = "6"
        number = Double(inputDisplay.text!)!
    }
    @IBAction func button7(_ sender: Any) {
        inputDisplay.text = "7"
        number = Double(inputDisplay.text!)!
    }
    @IBAction func button8(_ sender: Any) {
        inputDisplay.text = "8"
        number = Double(inputDisplay.text!)!
    }
    @IBAction func button9(_ sender: Any) {
        inputDisplay.text = "9"
        number = Double(inputDisplay.text!)!
    }
    
    
    @IBAction func converterButton(_ sender: AnyObject) {
    
        let alert = UIAlertController(title: "Converter List", message: "Choose Converter", preferredStyle: .actionSheet)
        
        
        alert.addAction(UIAlertAction(title: "fahrenheit to celcius", style: .default, handler: {
            (alertAction)  in
            var newNum = Double() //(self.inputDisplay.text!)!
            newNum = newNum * 9/5 + 32
            self.outputDisplay.text = "\(newNum) °F"
        }))
        
        alert.addAction(UIAlertAction(title: "celcius to fahrenheit", style: .default, handler: {
            (alertAction) in
            var newNum = Double() //(self.inputDisplay.text!)!
            newNum = newNum * 9/5 - 32
            self.outputDisplay.text = "\(newNum) °C"
        }))
        
        alert.addAction(UIAlertAction(title: "miles to kilometers", style: .default, handler: {
            (alertAction) in
            //var convertNum = Double(self.inputDisplay.text)
            var newNum = Double() //(self.inputDisplay.text!)!
            newNum = newNum * 1.609
            self.outputDisplay.text = "\(newNum) km"
        }))
        
        alert.addAction(UIAlertAction(title: "kilometers to miles", style: .default, handler: {
            (alertAction) in
            var newNum = Double()  //(self.inputDisplay.text!)!
            newNum = newNum / 1.609
            self.outputDisplay.text = "\(newNum) mi"
        }))
        
        present(alert, animated: true, completion: nil)
        
    }
}
