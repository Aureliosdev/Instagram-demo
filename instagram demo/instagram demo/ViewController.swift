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
        
        models.append(InstagramPost(numberOfLikes: 254, userName: "@Aureliola", userImageName: "head", mainImageName: "post_1"))
        models.append(InstagramPost(numberOfLikes: 301, userName: "@LeoMessi", userImageName: "head", mainImageName: "post_2"))
        
        models.append(InstagramPost(numberOfLikes: 280, userName: "@JLO", userImageName: "head", mainImageName: "post_3"))
        
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120+140+view.frame.size.width
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
  
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath) as! TableViewCell
        cell.configure(with: models[indexPath.row])
        return cell
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
