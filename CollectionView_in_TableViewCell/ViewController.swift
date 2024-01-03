//
//  ViewController.swift
//  CollectionView_in_TableViewCell
//
//  Created by Pheayuth's iMac on 2/1/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
 

    @IBOutlet var tableView: UITableView!
    
    var model =  [Model]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(MyTableViewCell.nib(), forCellReuseIdentifier: MyTableViewCell.identifier)
        tableView.delegate = self
        tableView.dataSource = self
        model.append(Model(titleName: "Jimmy", imageName: "cat_img"))
        model.append(Model(titleName: "Jeck", imageName: "cat1_img"))
        model.append(Model(titleName: "G G", imageName: "cat2_img"))
        model.append(Model(titleName: "K z", imageName: "cat3_img"))
    }
    
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MyTableViewCell.identifier , for: indexPath) as! MyTableViewCell
        cell.configure(with: model)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250.0
    }


}

struct Model{
    let title: String
    let image: String
    init(titleName: String, imageName: String) {
        self.title = titleName
        self.image = imageName
    }
}

