//
//  RestaurantTableViewController.swift
//  FavFood
//
//  Created by Aashima Singh on 11/18/16.
//  Copyright © 2016 Aashima Singh. All rights reserved.
//

import UIKit


class RestaurantTableViewController: UITableViewController {
    
    var restaurants:[Restaurant] = [
        Restaurant(name: "Cafe Supernatural", location: "G/F, 72 Po Hing Fong, Sheung Wan, Hong Kong", phone: "123-456-7890", image: "barrafina" , type: "Cafe" , isVisited: false),
        Restaurant(name: "Dominoe's Pizza", location: "Shop B, G/F, 22-24A Tai Ping San Street SOHO, Sheung Wan, Hong Kong",phone: "123-456-7890", image: "teakha" , type: "Bakery" , isVisited: false),
        Restaurant(name: "Papa Johns", location: "Shop B, G/F, 22-24A Tai Ping San Street SOHO, Sheung Wan, Hong Kong",phone: "123-456-7890", image: "traif" , type: "Italian" , isVisited: false),
        Restaurant(name: "Italian Bristro", location: "633 Bourke St Sydney New South Wales 2010 Surry Hills",phone: "123-456-7890", image: "upstate" , type: "Indian" , isVisited: false),
        Restaurant(name: "Curry Leaves", location: "412-414 George St Sydney New South Wales",phone: "123-456-7890", image: "wafflewolf" , type: "Breakfast" , isVisited: false),
        Restaurant(name: "Rasoi Restaurant", location: "95 1st Ave New York, NY 10003", phone: "123-456-7890",image: "grahamavenuemeats" , type: "Cafe" , isVisited: false),
        Restaurant(name: "Khazana", location: "229 S 4th St Brooklyn, NY 11211", phone: "123-456-7890",image: "haighschocolate" ,type: "American" ,  isVisited: false),
        Restaurant(name: "Little Italy", location: "445 Graham Ave Brooklyn, NY 11211", phone: "123-456-7890",image: "homei" ,type: "French" ,  isVisited: false),
        Restaurant(name: "Hungry Howie's", location: "22 Charlwood Street London SW1V 2DY Pimlico",phone: "123-456-7890", image: "palominoespresso" ,type: "Greek" ,  isVisited: false),
        Restaurant(name: "Hole in the Wall Cafe", location: "Shop B, 20 Tai Ping Shan Road SOHO, Sheung Wan, Hong Kong", phone: "123-456-7890",image: "petiteoyster" , type: "Indian" , isVisited: false),
        Restaurant(name: "Swagat", location: "Beacon Hills", phone: "123-456-7890",image: "posatelier" , type: "Italian" , isVisited: false),
        Restaurant(name: "Chipotle", location: "24 Tai Ping Shan Road SOHO, Sheung Wan, Hong Kong",phone: "123-456-7890", image: "royaloak" , type: "Mexican" , isVisited: false),
        Restaurant(name: "KFC", location: "2 Regency Street London SW1P 4BZ United Kingdom", phone: "123-456-7890",image: "bourkestreetbakery" , type: "British" , isVisited: false),
        Restaurant(name: "McDonalds", location: "445 Graham Ave Brooklyn, NY 11211", phone: "123-456-7890",image: "cafedeadend" , type: "Pizza" , isVisited: false),
        Restaurant(name: "Burger King", location: "Shop 1 61 York St Sydney New South Wales", phone: "123-456-7890",image: "cafeloisl" , type: "French" , isVisited: false),
        Restaurant(name: "SFC", location: "Los Angeles", phone: "123-456-7890",image: "cafelore" , type: "Mexican" , isVisited: false)
        
    ]
//    var restaurantNames = ["Cafe Deadend","Dominoe's Pizza","Papa Johns","Italian Bristro","Curry Leaves","Rasoi Restaurant",
//                           "Khazana","Little Italy","Hungry Howie's","Hole in the Wall Cafe","Swagat","Chipotle","KFC",
//                           "McDonalds","Burger King","SFC"]
//    //16
//    var restaurantImages = ["barrafina","teakha","traif","upstate","wafflewolf","grahamavenuemeats","haighschocolate","homei",
//                            "palominoespresso","petiteoyster","posatelier","royaloak","bourkestreetbakery","cafedeadend",
//                            "cafeloisl","cafelore"]
//    
//    var restaurantLocations = ["New York","Kent","Ohio","Washington DC","Cleveland","Denver","Lone Tree","Highland Ranchs",
//                               "Memphis","Seattle","Kansas","Ontario","Delhi","Vietnam","Beacon Hills","Los Angeles"]
//    
//    var restaurantTypes = ["Italian","Mexican","Indian","Mexican","French","Greek","Italian","Indian","American","American",
//                           "Pizza","Bakery","Spanish","Mexican","British","Bakery"]
//    
//    var restaurantIsVisited = Array(repeating: false, count: 21)

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.hidesBarsOnSwipe = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurants.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! RestaurantTableViewCell
        

        // Configure the cell...
        cell.nameLabel.text = restaurants[indexPath.row].name
        cell.locationLabel.text = restaurants[indexPath.row].location
        cell.typeLabel.text = restaurants[indexPath.row].type
        cell.thumbnailImageView.image = UIImage(named: restaurants[indexPath.row].image)
        cell.thumbnailImageView.layer.cornerRadius = 30.0
        cell.thumbnailImageView.clipsToBounds = true
        
        if restaurants[indexPath.row].isVisited {
            cell.accessoryType = .checkmark
        } else {
            cell.accessoryType = .none
        }
        return cell
    }
    
    /*
//    func tableView(UITableView, willSelectRowAt: IndexPath)
//    Tells the delegate that a specified row is about to be selected.
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let optionMenu = UIAlertController(title: nil, message: "What Do You Want To Do?", preferredStyle: .actionSheet)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        optionMenu.addAction(cancelAction)
        
//        Call Option
        
        let callActionHandler = { (action:UIAlertAction!) -> Void in
            
            let alertMessage = UIAlertController(title: "Service Unavailable", message: "The call feature has not been enabled yet", preferredStyle: .alert)
            alertMessage.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alertMessage, animated: true, completion: nil)
            
        }
        
        let callAction = UIAlertAction(title: "Call " + "234-000- \(indexPath.row)", style: .default, handler: callActionHandler)
        
        optionMenu.addAction(callAction)
        
//        Check uncheck Action
        let checkInTitle = restaurantIsVisited[indexPath.row] ? "Undo Check In": "Check In"
        
        let checkInAction = UIAlertAction(title: checkInTitle, style: .default, handler: {
                (action:UIAlertAction!) -> Void in
        
                let cell = tableView.cellForRow(at: indexPath)
                    
//              Toggle Check In and  Undo
                    self.restaurantIsVisited[indexPath.row] = self.restaurantIsVisited[indexPath.row] ? false : true
                    cell?.accessoryType = self.restaurantIsVisited[indexPath.row] ? .checkmark : .none
                })
//        Check In Option
        
//        let checkInAction = UIAlertAction(title: "Check In", style: .default, handler: {
//            (action:UIAlertAction!) -> Void in
//            
//            let cell = tableView.cellForRow(at: indexPath)
//            cell?.accessoryType = .checkmark
//            self.restaurantIsVisited[indexPath.row] = true
//        })
        
        optionMenu.addAction(checkInAction)
        
//        display menu 
        present(optionMenu, animated: true, completion: nil)
        
        tableView.deselectRow(at: indexPath, animated: false)
        
    }
    
    
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
        restaurantNames.remove(at: indexPath.row)
        restaurantTypes.remove(at: indexPath.row)
        restaurantLocations.remove(at: indexPath.row)
        restaurantIsVisited.remove(at: indexPath.row)
        restaurantImages.remove(at: indexPath.row)
        tableView.deleteRows(at: [indexPath], with: .right)
//     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
//        tableView.reloadData()
        
     }
    
*/
    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        
//        Social Sharing
        let shareAction = UITableViewRowAction(style: .default, title: "Share", handler: { (action, indexPath) -> Void in
            let defaultText = "Just Checking In At" + self.restaurants[indexPath.row].name
            let activityController = UIActivityViewController(activityItems: [defaultText], applicationActivities: nil)
            self.present(activityController, animated: true, completion: nil)
        })
        
        shareAction.backgroundColor = UIColor(red: 48.0/255.0, green: 173.0/255.0, blue: 99.0/255.0, alpha: 1.0)
        
//        Delete Action
        let deleteAction = UITableViewRowAction(style: .default, title: "Delete", handler: {(action, indexPath) -> Void in
            // Delete the row from the data source
            self.restaurants.remove(at: indexPath.row)
            self.tableView.deleteRows(at: [indexPath], with: .right)
            })
        deleteAction.backgroundColor = UIColor(red: 202.0/255.0, green: 202.0/255.0, blue: 203.0/255.0, alpha: 1.0)
        
        return [shareAction, deleteAction]
    }

    
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showRestaurantDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationController = segue.destination as!
                RestaurantDetailViewController
                
            destinationController.restaurant = restaurants[indexPath.row]
        }
        
   
     }
    }

}
