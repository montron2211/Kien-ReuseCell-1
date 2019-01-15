//
//  ViewController.swift
//  Kien ReuseCell 1
//
//  Created by duycuong on 11/21/18.
//  Copyright © 2018 duycuong. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var numbers = Array(0...100)
    
    var listName = [String]()
    
    func addNames() {
        for i in 0...100 {
            listName.append("Kien Cuong \(i)")
        }
    }
    
    var numberOfCell: Int = 0 {
        didSet {
            title = "Số Cell: \(numberOfCell)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addNames()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numbers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        if cell == nil {
            cell = Subtitle(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: "Cell")
            numberOfCell += 1
        }
        //hien thi mang so
        cell?.textLabel?.text = String(numbers[indexPath.row])
        
        if indexPath.row % 10 == 0 {
            cell?.detailTextLabel?.text = listName[indexPath.row]
            cell?.backgroundColor = UIColor.red
        }
        return cell!
    }
    
    
    

}

