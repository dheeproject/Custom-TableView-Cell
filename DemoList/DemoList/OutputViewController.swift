//
//  OutputViewController.swift
//  DemoList
//
//  Created by unthinkable-mac-0040 on 29/09/22.
//

import UIKit

struct StudentData {
    var emailid: String
    var name: String
    var action: String
}

protocol dataAdded: AnyObject {
    func updateTable(studentmodel: StudentData)
}
class OutputViewController: UIViewController {
    var modelData:[StudentData] = [StudentData(emailid: "Email", name: "Name", action: "Action")]
    @IBOutlet weak var tableViewList: UITableView!
    
    @IBOutlet weak var searchButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Output"
        searchButton.layer.cornerRadius = 10.0
        self.tableViewList.register(UINib(nibName: "NewTableViewCell", bundle: nil), forCellReuseIdentifier: "newcell")
        tableViewList.dataSource = self
        tableViewList.delegate =  self
        tableViewList.reloadData()
    }


}
extension OutputViewController: dataAdded {
    func updateTable(studentmodel: StudentData) {
        modelData.append(studentmodel)
    }
}
extension OutputViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return modelData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableViewList.dequeueReusableCell(withIdentifier: "newcell") as! NewTableViewCell
            cell.emailLabel.text = modelData[indexPath.row].emailid
            cell.emailLabel.backgroundColor = UIColor.black
            cell.emailLabel.textColor = UIColor.white
            cell.nameLabel.text = modelData[indexPath.row].name
            cell.nameLabel.backgroundColor = UIColor.black
            cell.nameLabel.textColor = UIColor.white
            cell.buttonTitle.setTitle("\(modelData[indexPath.row].action)", for: .normal)
            cell.buttonTitle.backgroundColor = UIColor.black
            cell.buttonTitle.tintColor = UIColor.white
            return cell
        }
        
        let cell = tableViewList.dequeueReusableCell(withIdentifier: "newcell") as! NewTableViewCell
        cell.emailLabel.text = modelData[indexPath.row].emailid
        cell.nameLabel.text = modelData[indexPath.row].name
        cell.buttonTitle.setTitle("\(modelData[indexPath.row].action)", for: .normal)
        return cell
    }
}
