//
//  RestaurantDetailViewController.swift
//  FavFood
//
//  Created by Aashima Singh on 11/19/16.
//  Copyright © 2016 Aashima Singh. All rights reserved.
//

import UIKit

class RestaurantDetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var restaurantImageView:UIImageView!
    @IBOutlet var tableView:UITableView!
    @IBAction func close(segue:UIStoryboardSegue)   {
        
    }
    
//    @IBOutlet var restaurantNameLabel:UILabel!
//    @IBOutlet var restaurantLocationLabel:UILabel!
//    @IBOutlet var restaurantTypeLabel:UILabel!
    
    var restaurant:Restaurant!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.hidesBarsOnSwipe = false
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = restaurant.name
        
        tableView.backgroundColor = UIColor(red: 240.0/255.0, green: 240.0/255.0, blue: 240.0/255.0, alpha: 0.2)
        
        tableView.tableFooterView = UIView(frame: CGRect.zero)
        
        tableView.separatorColor = UIColor(red: 240.0/255.0, green: 240.0/255.0, blue: 240.0/255.0, alpha: 0.8)
       
        restaurantImageView.image = UIImage(named: restaurant.image)
        //        restaurantNameLabel.text = restaurant.name
        //        restaurantLocationLabel.text = restaurant.location
        //        restaurantTypeLabel.text = restaurant.type
        
        tableView.estimatedRowHeight = 36.0
        tableView.rowHeight = UITableViewAutomaticDimension
        
            }
    


    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! RestaurantDetailTableViewCell
        
//        Configuring the cell
        switch indexPath.row {
        case 0:
            cell.fieldLabel.text = "Name"
            cell.valueLabel.text = restaurant.name
        case 1:
            cell.fieldLabel.text = "Location"
            cell.valueLabel.text = restaurant.location
        case 2:
            cell.fieldLabel.text = "Phone"
            cell.valueLabel.text = restaurant.phone
        case 3:
            cell.fieldLabel.text = "Type"
            cell.valueLabel.text = restaurant.type
        case 4:
            cell.fieldLabel.text = "Been Here"
            cell.valueLabel.text = (restaurant.isVisited) ? "Yes, I've Been Here" : "No"
        default:
            cell.fieldLabel.text = ""
            cell.valueLabel.text = ""
        }
        cell.backgroundColor = UIColor.clear
        return cell
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
