//
//  ConverterViewController.swift
//  Conversion Calculator UI
//
//  Created by Henry Sills on 7/12/19.
//  Copyright © 2019 Henry Sills. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {
    
    
    @IBOutlet weak var converterLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func ConverterChoose(_ sender: AnyObject) {
        
        let menuLabel = UIAlertController(title: "Choose Converter", message: "Choose Converter", preferredStyle: UIAlertController.Style.actionSheet )
        
        menuLabel.addAction(UIAlertAction(title: "fahrenheit to celcius", style: UIAlertAction.Style.default, handler: {(alertAction) -> Void in
            self.converterLabel.text = "fahrenheit to celcius"
        }))
        
        menuLabel.addAction(UIAlertAction(title: "celcius to fahrenheit", style: UIAlertAction.Style.default, handler: {(alertAction) -> Void in
            self.converterLabel.text = "celcius to fahrenhei"
        }))
        
        menuLabel.addAction(UIAlertAction(title: "miles to kilometers", style: UIAlertAction.Style.default, handler: {(alertAction) -> Void in
            self.converterLabel.text = "miles to kilometers"
        }))
        
        menuLabel.addAction(UIAlertAction(title: "kilometers to miles", style: UIAlertAction.Style.default, handler: {(alertAction) -> Void in
            self.converterLabel.text = "kilometers to miles"
        }))

        self.present(menuLabel, animated: true, completion: nil)
    }
}
