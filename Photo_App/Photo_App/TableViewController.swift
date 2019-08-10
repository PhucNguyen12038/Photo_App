//
//  TableViewController.swift
//  Photo_App
//
//  Created by nhp on 8/5/19.
//  Copyright © 2019 nhp. All rights reserved.
//

import UIKit

class TableViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    let filters = ["Red","Green","Blue","Yellow",
    "Red1","Green1","Blue1","Yellow1","Red2","Green2","Blue2","Yellow2","Red3","Green3","Blue3","Yellow3","Red4","Green4","Blue4","Yellow4","Red5","Green5","Blue5","Yellow5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(filters[indexPath.row])
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FilterCell", for: indexPath)
        cell.textLabel?.text = filters[indexPath.row]
        return cell
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
