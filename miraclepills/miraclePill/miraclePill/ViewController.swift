//
//  ViewController.swift
//  miraclePill
//
//  Created by New on 1/2/17.
//  Copyright © 2017 HSI. All rights reserved.
//

import UIKit
//UIPickerViewDataSource And View Delegate allows us to tell the app that the function will give the title to the picker
class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var mPills: UIImageView!
    @IBOutlet weak var mPillText: UILabel!
    @IBOutlet weak var costText: UILabel!
    @IBOutlet weak var divider: UIView!
    @IBOutlet weak var fullName: UILabel!
    @IBOutlet weak var fullNameText: UITextField!
    @IBOutlet weak var streetAddress: UILabel!
    @IBOutlet weak var streetName: UITextField!
    @IBOutlet weak var cityText: UITextField!
    @IBOutlet weak var stateLbl: UILabel!
    @IBOutlet weak var citylbl: UILabel!
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var countryLbl: UILabel!
    @IBOutlet weak var countryField: UITextField!
    @IBOutlet weak var zipCodeLbl: UILabel!
    @IBOutlet weak var zipCodeText: UITextField!
    @IBOutlet weak var buyNow: UIButton!
    @IBOutlet weak var successIndicator: UIImageView!

    
    let states = ["Alaska", "Arkansas", "Alabama", "New York", "California", "Maine", "Nevada", "Colorado", "Michigan", "Florida", "North Carolina", "South Carolina", "Georgia", "New Jersey", "Delaware", "Vermont"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Tells code that the data source and the delegate is within this code.
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: Any) {
        //shows the picker view that was originally hidden
        statePicker.isHidden = false
        countryField.isHidden = true
        zipCodeLbl.isHidden = true
        zipCodeText.isHidden = true
        countryLbl.isHidden = true
        buyNow.isHidden = true
    
    }
    
    @IBAction func buyBtn(_ sender: Any) {
        
        mPills.isHidden = true
        mPillText.isHidden = true
        costText.isHidden = true
        divider.isHidden = true
        fullName.isHidden = true
        fullNameText.isHidden = true
        streetAddress.isHidden = true
        streetName.isHidden = true
        cityText.isHidden = true
        stateLbl.isHidden = true
        citylbl.isHidden = true
        statePickerBtn.isHidden = true
        statePicker.isHidden = true
        countryField.isHidden = true
        zipCodeLbl.isHidden = true
        zipCodeText.isHidden = true
        countryLbl.isHidden = true
        buyNow.isHidden = true
        successIndicator.isHidden = false
    }

    
    // Columns
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //How many items are going to show up. States.Count = Array.How many items are in the array.
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    //returns the states in the array by name.
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    //What happens when you select a row
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        //Changes the button text to the state that was selected in the picker
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        //Hides the picker after selection
        statePicker.isHidden = true
        countryField.isHidden = false
        zipCodeLbl.isHidden = false
        zipCodeText.isHidden = false
        countryLbl.isHidden = false
        buyNow.isHidden = false
    }
}

