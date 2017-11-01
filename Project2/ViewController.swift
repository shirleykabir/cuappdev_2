//
//  ViewController.swift
//  Project2
//
//  Created by Shirley Kabir on 10/7/16.
//  Copyright © 2016 org.cuappdev.project2. All rights reserved.
//  

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 227/255, green: 228/255, blue: 250/255, alpha: 1.0)
        
        addUIElements()
    }
    
    class Student {
        var name: String
        var year: String
        var major: String
        var gpa: String
        
        init(name: String, year: String, major: String, gpa: String){
            self.name: name
            self.year: year
            self.major: major
            self.gpa: gpa
        }
    }
    
    func addUIElements() {
        let name = UILabel(frame: CGRect(x: 20, y: 30, width: 50, height: 30))
        name.text = "Name:"
        name.textColor = UIColor(red: 147/255, green: 148/255, blue: 170/255, alpha: 1)
        name.font = UIFont(name: "Avenir", size: 16)
        view.addSubview(name)
        
        let year = UILabel(frame: CGRect(x: 20, y: 70, width: 50, height: 30))
        year.text = "Year:"
        year.textColor = UIColor(red: 147/255, green: 148/255, blue: 170/255, alpha: 1)
        year.font = UIFont(name: "Avenir", size: 16)
        view.addSubview(year)
        
        let major = UILabel(frame: CGRect(x: 20, y: 110, width: 50, height: 30))
        major.text = "Major:"
        major.textColor = UIColor(red: 147/255, green: 148/255, blue: 170/255, alpha: 1)
        major.font = UIFont(name: "Avenir", size: 16)
        view.addSubview(major)
        
        let gpa = UILabel(frame: CGRect(x: 20, y: 150, width: 50, height: 30))
        gpa.text = "GPA:"
        gpa.textColor = UIColor(red: 147/255, green: 148/255, blue: 170/255, alpha: 1)
        gpa.font = UIFont(name: "Avenir", size: 16)
        view.addSubview(gpa)
        
        let textName = UITextField(frame: CGRect(x: 80, y: 30, width: 230, height: 30))
        textName.layer.borderColor = UIColor(red: 207/255, green: 208/255, blue: 230/255, alpha: 1.0).cgColor
        textName.layer.borderWidth = 1.0
        textName.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        textName.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        textName.font = UIFont(name: "Avenir", size: 16)
        view.addSubview(textName)
        
        let textYear = UITextField(frame: CGRect(x: 80, y: 70, width: 230, height: 30))
        textYear.layer.borderColor = UIColor(red: 207/255, green: 208/255, blue: 230/255, alpha: 1.0).cgColor
        textYear.layer.borderWidth = 1.0
        textYear.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        textYear.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        textYear.font = UIFont(name: "Avenir", size: 16)
        view.addSubview(textYear)
        
        let textMajor = UITextField(frame: CGRect(x: 80, y: 110, width: 230, height: 30))
        textMajor.layer.borderColor = UIColor(red: 207/255, green: 208/255, blue: 230/255, alpha: 1.0).cgColor
        textMajor.layer.borderWidth = 1.0
        textMajor.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        textMajor.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        textMajor.font = UIFont(name: "Avenir", size: 16)
        view.addSubview(textMajor)
        
        let textGpa = UITextField(frame: CGRect(x: 80, y: 150, width: 230, height: 30))
        textGpa.layer.borderColor = UIColor(red: 207/255, green: 208/255, blue: 230/255, alpha: 1.0).cgColor
        textGpa.layer.borderWidth = 1.0
        textGpa.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        textGpa.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        textGpa.font = UIFont(name: "Avenir", size: 16)
        view.addSubview(textGpa)
        
        let addStudentButton = UIButton(frame: CGRect(x: 120, y: 200, width: 120, height: 40))
        addStudentButton.setTitle("ADD STUDENT", for: UIControlState.normal)
        addStudentButton.backgroundColor = UIColor(red: 157/255, green: 158/255, blue: 180/255, alpha: 1.0)
        addStudentButton.titleLabel!.font = UIFont(name: "Avenir", size: 14)
        addStudentButton.addTarget(self, action: #selector (aFunctionThatWillPrintTheStudentInformation), for: .touchUpInside)
        view.addSubview(addStudentButton)

        let studentInformation = UILabel(frame: CGRect(x: 120, y: 290, width: 90, height: 30))
        studentInformation.text = "Student Information:"
        studentInformation.textColor = UIColor(red: 107/255, green: 108/255, blue: 130/255, alpha: 1)
        studentInformation.font = UIFont(name: "Avenir", size: 16)
        view.addSubview(studentInformation)

        
    }
    
    func aFunctionThatWillPrintTheStudentInformation(){
        print(textName.text + "is majoring in" + textMajor.text + "with a" + textGpa.text)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

