//
//  NewEmojiTableViewController.swift
//  SwiftBookTableApp
//
//  Created by Дмитрий Дуров on 10.08.2022.
//

import UIKit

class NewEmojiTableViewController: UITableViewController {
    
    @IBOutlet weak var cancelButton: UIBarButtonItem!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    @IBOutlet weak var emojiTF: UITextField!
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var descriptionTF: UITextField!
    
    var emoji = Emoji(emoji: "", name: "", description: "", isFavorite: false)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateSaveButtonState()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard segue.identifier == "saveSegue" else { return }
        
        let emoji = emojiTF.text ?? ""
        let name = nameTF.text ?? ""
        let description = descriptionTF.text ?? ""
        
        self.emoji = Emoji(emoji: emoji, name: name, description: description, isFavorite: self.emoji.isFavorite)
    }
    
    @IBAction func textChanged(_ sender: UITextField) {
        updateSaveButtonState()
    }
    
    private func updateSaveButtonState() {
        let emojiText = emojiTF.text ?? ""
        let nameText = nameTF.text ?? ""
        let descriptionText = descriptionTF.text ?? ""
        
        saveButton.isEnabled = !emojiText.isEmpty && !nameText.isEmpty && !descriptionText.isEmpty
    }
    
}

