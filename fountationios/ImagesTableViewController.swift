//
//  ImagesTableViewController.swift
//  fountationios
//
//  Created by Jessica Bai on 6/13/21.
//

import UIKit
struct Country {
    var isoCode: String
    var name: String
}
class ImagesTableViewController: UITableViewController {
    let countries = [
      Country(isoCode: "at", name: "Austria"),
      Country(isoCode: "be", name: "Belgium"),
      Country(isoCode: "de", name: "Germany"),
      Country(isoCode: "el", name: "Greece"),
      Country(isoCode: "fr", name: "France"),
  ]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 1
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return countries.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ImageCell", for: indexPath)
        let image = countries[indexPath.row]
        cell.textLabel?.text = image.name
        cell.detailTextLabel?.text = image.isoCode
        cell.imageView?.image = UIImage(named: image.isoCode)
        
//         Configure the cell...

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "\(section)"
    }
    
}
