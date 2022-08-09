//
//  MainTableViewController.swift
//  SwiftBookTableApp
//
//  Created by Дмитрий Дуров on 09.08.2022.
//

import UIKit

class EmojiTableViewController: UITableViewController {
    
    var objects = Emoji.getEmoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Emoji Reader"
        navigationItem.leftBarButtonItem = self.editButtonItem
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        objects.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: "emojiCell",
            for: indexPath
        ) as? EmojiTableViewCell else { return UITableViewCell() }
        
        let object = objects[indexPath.row]
        cell.set(object: object)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            objects.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        
        let moveEmoji = objects.remove(at: sourceIndexPath.row)
        objects.insert(moveEmoji, at: destinationIndexPath.row)
        tableView.reloadData()
    }
}
