//
//  ViewController.swift
//  instagram demo
//
//  Created by Aurelio Le Clarke on 07.04.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {

    
    
    @IBOutlet weak var MainTableView: UITableView!
    
    var models = [InstagramPost]()
    override func viewDidLoad() {
        super.viewDidLoad()
        MainTableView.register(TableViewCell.nib(), forCellReuseIdentifier: TableViewCell.identifier)
        MainTableView.delegate = self
        MainTableView.dataSource = self
    }


    func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath) as! TableViewCell
        cell.configure(with: models[indexPath.row])
        return UITableViewCell()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}

struct InstagramPost {
    let numberOfLikes: Int
    let userName: String
    let userImageName: String
    let mainImageName: String
    
    
}
