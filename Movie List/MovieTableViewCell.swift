//
//  MovieTableViewCell.swift
//  Sprint2 Practice
//
//  Created by Lambda_School_Loaner_64 on 5/2/19.
//  Copyright © 2019 Lambda. All rights reserved.
//

import UIKit

protocol MovieTableViewCellDelegate: class {
    func seenButtonWasTapped(for cell: MovieTableViewCell)
}

class MovieTableViewCell: UITableViewCell {

    
    @IBAction func seenButtonPressed(_ sender: Any) {
        delegate?.seenButtonWasTapped(for: self)
    }
    
    func updateViews() {
        guard let movie = movie else { return }
        movieLabel.text = movie.movie
        let buttonTitle = movie.hasSeen ? "Seen" : "Not Seen"
        seenButton.setTitle(buttonTitle, for: .normal)
    }
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    @IBOutlet weak var movieLabel: UILabel!
    @IBOutlet weak var seenButton: UIButton!
    
    weak var delegate: MovieTableViewCellDelegate?
}

