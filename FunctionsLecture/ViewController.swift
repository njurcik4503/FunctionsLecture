//
//  ViewController.swift
//  FunctionsLecture
//
//  Created by Robert D. Brown on 11/24/20.
//  Copyright © 2020 John Hersey High School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var parameterFunctionLabel: UILabel!
    @IBOutlet weak var voidFunctionLabel: UILabel!
    @IBOutlet weak var returnFunctionLabel: UILabel!
    @IBOutlet weak var functionWithBothLabel: UILabel!
    
    
    @IBOutlet weak var parameterFunctionTextfield: UITextField!
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
    }

    @IBAction func voidFunctionPressed(_ sender: Any)
    {
        //Function Call
        voidFunction()
    }
    
    @IBAction func parameterFunctionPressed(_ sender: Any)
    {
        let nameEntered = parameterFunctionTextfield.text!
        
        //Function Call
        parameterFunction(EnterNameHere: nameEntered)
    }
    @IBAction func returnStatementPressed(_ sender: Any)
    {
        //Function Call
        let valueReturned = returnFunction()
        
        returnFunctionLabel.text = valueReturned
    }
    
    @IBAction func returnAndParametersFunction(_ sender: Any)
    {
        let n1 = Int(textField1.text!)!
        let n2 = Int(textField2.text!)!
        
        let sum = add(number1: n1, number2: n2)
        
        functionWithBothLabel.text = "\(n1) + \(n2) = \(sum)"
    }
    
    //Function Implementation for Void Function
    func voidFunction() {
        voidFunctionLabel.text = "Hello"
    }
    
    //Function Implementation for Parameter Function
    func parameterFunction(EnterNameHere name: String) {
        parameterFunctionLabel.text = "Hello, \(name)"
    }
    
    //Function Implementation for return statement
    func returnFunction() -> String {
        let name = "George"
        return name
    }
    
    //Function Implementation
    func add(number1: Int, number2: Int) -> Int {
        let answer = number1 + number2
        
        return answer
    }
    
}

