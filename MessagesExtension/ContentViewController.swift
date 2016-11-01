//
//  ContentViewController.swift
//  VoteApp
//
//  Created by Ellina Kuznecova on 01.11.16.
//  Copyright © 2016 Ellina Kuznetcova. All rights reserved.
//

import UIKit

class ContentViewController: UIViewController {
    @IBOutlet weak var pollVariantTextField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var addNewVariant: UIButton!
    
    var data: [String] = []
    
    @IBAction func addNewVariantPressed(_ sender: AnyObject) {
        self.changeViewsState(to: true)
    }
    
    @IBAction func savePressed(_ sender: AnyObject) {
        self.data.append(self.pollVariantTextField.text!)
        self.tableView.reloadData()
        self.changeViewsState(to: false)
    }
    
    @IBAction func cancelPressed(_ sender: AnyObject) {
        self.changeViewsState(to: false)
    }
    
    private func changeViewsState(to visibility: Bool) {
        self.tableView.isHidden = visibility
        self.addNewVariant.isHidden = visibility
    }
}

extension ContentViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Basic")!
        cell.textLabel?.text = self.data[indexPath.row]
        return cell
    }
}
