//
//  MovieTableViewCell.swift
//  Sprint2 Practice
//
//  Created by Lambda_School_Loaner_64 on 5/2/19.
//  Copyright © 2019 Lambda. All rights reserved.
//

import UIKit

protocol MovieTableViewCellDelegate: AnyObject {
    func seenButtonWasTapped(for cell: MovieTableViewCell)
}

class MovieTableViewCell: UITableViewCell {

  
    @IBAction func seenButtonPressed(_ sender: Any) {
        delegate?.seenButtonWasTapped(for: self)
    }
    
    private func updateViews() {
        guard let movie = movie else { return }
        let seenButtonTitle = movie.seen ? "Seen" : "Not Seen"
        seenButton.setTitle(seenButtonTitle, for: .normal)
        movieLabel.text = movie.title
    }

    weak var delegate: MovieTableViewCellDelegate?
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    @IBOutlet weak var movieLabel: UILabel!
    @IBOutlet weak var seenButton: UIButton!
}

