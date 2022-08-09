//
//  MainTableViewController.swift
//  SwiftBookTableApp
//
//  Created by Дмитрий Дуров on 09.08.2022.
//

import UIKit

class EmojiTableViewController: UITableViewController {
    
    let emojies = Emoji.getEmoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        title = "Emoji Reader"
        navigationItem.leftBarButtonItem = self.editButtonItem
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        emojies.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: "emojiCell",
            for: indexPath
        )
                as? EmojiTableViewCell else { return UITableViewCell() }
        
        let object = emojies[indexPath.row]
        cell.set(object: object)
        
        
        
        
        
        
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
