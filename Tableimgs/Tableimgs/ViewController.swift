//
//  ViewController.swift
//  Tableimgs
//
//  Created by Bimal@AppStation on 29/04/22.
//

import UIKit

class ViewController: UIViewController{
    
    @IBOutlet var tableview: UITableView!
    
    let listOfName = ["Aneesha","Amal","sruthi","Kannan","Jerin"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableview.dataSource = self
        self.tableview.delegate = self
        // Do any additional setup after loading the view.
    }
    

}
extension ViewController: UITableViewDataSource,UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listOfName.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "namecell", for: indexPath) as! NamesTableViewCell
        if(indexPath.row % 2 == 0){
            cell.setStrng(strNm: listOfName[indexPath.row], image: "profileimg")
        }
        else{
            cell.setStrng(strNm: listOfName[indexPath.row], image: "personimg")
        }
       
        return cell
    }
}



