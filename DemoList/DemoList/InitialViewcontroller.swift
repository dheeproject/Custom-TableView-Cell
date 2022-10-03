//
//  ViewController.swift
//  DemoList
//
//  Created by unthinkable-mac-0040 on 29/09/22.
//

import UIKit

class InitialViewcontroller: UIViewController {
    weak var delegate: dataAdded?
    @IBOutlet weak var nameTextfield: UITextField!
    
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var emailTextfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.addButton.layer.cornerRadius = 5.0
    }


    @IBAction func addItemAction(_ sender: UIButton) {
        guard let name = nameTextfield.text, let email = emailTextfield.text else {
            return
        }
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "VC") as! OutputViewController
        self.delegate = vc
        let model = StudentData(emailid: email, name: name, action: "Delete")
        self.delegate?.updateTable(studentmodel: model)
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

