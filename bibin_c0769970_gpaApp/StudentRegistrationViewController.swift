//
//  StudentRegistrationViewController.swift
//  bibin_c0769970_gpaApp
//
//  Created by MacStudent on 2019-11-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

struct studentList {
    var name  : String
    var lastName : String
    var studentId : String
}




class StudentRegistrationViewController: UIViewController {

    
    var nouArray = [studentList]()
    @IBOutlet weak var firstName: UITextField!
    
    
    @IBOutlet weak var lastName: UITextField!
    
    
    @IBOutlet weak var studentID: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func saveFunction(_ sender: Any) {
        
        
        let name: String = firstName.text!
         let last: String = lastName.text!
        let ID: String = studentID.text!
        
        if (name.isEmpty || last.isEmpty || ID.isEmpty)  {
            
             let alertController = UIAlertController(title: "Alert", message: "Please fill all the fields", preferredStyle: .alert)
             
             let cancelAction = UIAlertAction(title: "Ok", style: .default, handler: { (action : UIAlertAction!) -> Void in })

             alertController.addAction(cancelAction)

             self.present(alertController, animated: true, completion: nil)
            
        }
        
        else {
            
             let nouText = studentList(name: name, lastName: last, studentId: ID)
               nouArray.append(nouText)
            
            print(nouArray[0].name)
            print(nouArray[0].lastName)
            
            
           // studentList(name: firstName, lastName: lastName, studentId: ID)
            
            
        }
        
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
