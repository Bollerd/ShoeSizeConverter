//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Dirk Boller on 11.02.15.
//  Copyright (c) 2015 Dirk Boller. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    @IBOutlet weak var womensShoeSizeTextField: UITextField!
    @IBOutlet weak var womansConvertedShoeSizeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
        /*
        let sizeFromTextField = mensShoeSizeTextField.text
        let numberFromTextField = sizeFromTextField.toInt()
        var integerFromTextField = numberFromTextField!
        integerFromTextField += conversionConstant
        mensConvertedShoeSizeLabel.hidden = false
        let stringWithUpdatedShoeSize = "\(integerFromTextField)"
        mensConvertedShoeSizeLabel.text = stringWithUpdatedShoeSize
        */

        let sizeFromTextField = mensShoeSizeTextField.text.toInt()!
        let conversionConstant = 30
        mensConvertedShoeSizeLabel.hidden = false
        mensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant) in europäischer Größe"

    }

    @IBAction func convertWomansShoeSizeButtonPressed(sender: UIButton) {
        let sizeFromTextField = Double((womensShoeSizeTextField.text as NSString).doubleValue)
        let conversionConstant = 30.5
        womansConvertedShoeSizeLabel.hidden = false
        womansConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " (Europäische Größe)"
    }
}

