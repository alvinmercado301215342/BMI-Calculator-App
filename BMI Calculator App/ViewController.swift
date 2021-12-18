//
//  ViewController.swift
//  BMI Calculator App
//
//  Created by Alvin Carl Mercado on 2021-12-17.
//  Student ID: 301215342
//  Added calculation function


import UIKit

class ViewController: UIViewController {

    //outlets
    @IBOutlet weak var button_calculate: UIButton!
    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var age: UITextField!
    @IBOutlet weak var gender: UITextField!
    @IBOutlet weak var t_meters: UITextField!
    @IBOutlet weak var t_kilograms: UITextField!
    
    @IBOutlet weak var label_BMI: UILabel!
    @IBOutlet weak var label_result: UILabel!
    
    @IBOutlet weak var metrics: UILabel!
    //action (function)

    @IBAction func switcher(_ sender: UISwitch) {
        if sender.isOn {
            metrics.text = "Metrics"
            t_meters.placeholder = "Meters"
            t_kilograms.placeholder = "Kilograms"
        }
        else {
            metrics.text = "Imperial"
            t_meters.placeholder = "Inches"
            t_kilograms.placeholder = "Pounds"
            
        }
    }
    //reset
    @IBAction func reset(_ sender: Any) {
        name.text = ""
        age.text = ""
        gender.text = ""
        t_meters.text = ""
        t_kilograms.text = ""
        label_BMI.text = ""
        label_result.text = ""
    }
    @IBAction func caculateBMI(_ sender: Any) {
        let meters = (t_meters.text! as NSString).doubleValue
        let kilograms = (t_kilograms.text! as NSString).doubleValue
        let bmi = kilograms / pow(meters, 2)
        
        label_BMI.text = String(format: "%.2f", bmi)
        
        if bmi < 16 {
            label_result.text = "Severe thinness"
        }
        else if bmi <= 16 {
                label_result.text = "Moderate thinness"
             }
        else if bmi <= 17 {
                label_result.text = "Mild thinness"
            }
        else if bmi <= 18.5 {
                label_result.text = "Normal"
            }
        else if bmi <= 25 {
                label_result.text = "Overweight"
            }
        else if bmi <= 30 {
                label_result.text = "Obese Class I"
            }
        else if bmi <= 35 {
                label_result.text = "Obese Class II"
            }
        else if bmi > 40 {
                label_result.text = "Obese Class III"
            }
        }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        label_BMI.text = ""
        label_result.text = ""
    }

}

