//
//  EmojiTableViewCell.swift
//  SwiftBookTableApp
//
//  Created by Дмитрий Дуров on 09.08.2022.
//

import UIKit

class EmojiTableViewCell: UITableViewCell {
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }
    
    func set(object: Emoji) {
        emojiLabel.text = object.emoji
        nameLabel.text = object.name
        descriptionLabel.text = object.description
    }

}
