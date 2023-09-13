//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by user243065 on 8/30/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit


struct CalculatorBrain {
    var bmi : BMI?
    mutating func calculateBMI(height:Float , weight : Float)  {
        let bmiVal = weight/(height * height)
        if bmiVal < 18.5 {
            bmi = BMI(value: bmiVal, advice: "Eat more  Pie", color: UIColor.blue)
        }else if bmiVal < 24.9{
            bmi = BMI(value: bmiVal, advice: "Fit as fiddle", color: UIColor.green)
        }else {
            bmi = BMI(value: bmiVal, advice: "Eat less  Pie", color: UIColor.red)
        }
    }
    func getBMIValue() -> String {
       
        let bmitodecimal = String(format: "%.1f", bmi?.value ?? "0.0")
            return bmitodecimal
        
    }
    func getAdviceValue() -> String {
       
        return bmi?.advice ?? ""
        
    }
    func getColorValue() -> UIColor {
       
        
        return bmi?.color ?? UIColor.gray
        
    }
    
}
