//
//  TableViewController.swift
//  CardHistory
//
//  Created by Alexander on 13/03/2019.
//  Copyright © 2019 Alexander. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = UITableView.automaticDimension
        tableView.register(CardHistoryViewCell.self, forCellReuseIdentifier: "cell")
        //tableView.register(AdditionalCardViewCell.self, forCellReuseIdentifier: "cell")

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CardHistoryViewCell
        cell.cardNumberLabel.text = "5647 **** **** 1234"
        cell.commentLabel.text = "Some text here some text here"
        cell.dateLabel.text = "10 April"
        cell.moneyLabel.text = "+ 5 000 $"
        cell.color = .Green
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! AdditionalCardViewCell
//        cell.cardImageView.image = UIImage.init(named: "icon_mastercard")
//        cell.cardNumberLabel.text = "1234 **** **** 5432"
//        cell.dateLabel.text = "05/22"
        return cell
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
