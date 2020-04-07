//
//  MessageCell.swift
//  Instant-Chat
//
//  Created by Mehmet Eroğlu on 6.04.2020.
//  Copyright © 2020 Mehmet Eroğlu. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {

    @IBOutlet weak var messageBubbleView: UIView!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        messageBubbleView.layer.cornerRadius = messageBubbleView.frame.size.height / 5
    }
    
}
