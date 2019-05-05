//
//  AddMovieViewController.swift
//  Sprint2 Practice
//
//  Created by Lambda_School_Loaner_64 on 5/2/19.
//  Copyright © 2019 Lambda. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController {

    
    @IBAction func addMovieButtonPressed(_ sender: Any) {
    
        guard let title = moviesTextView.text, !title.isEmpty else { return }
        movieController.createMovie(with: title)
        navigationController?.popViewController(animated: true)
    }
    
    @IBOutlet weak var moviesTextView: UITextField!
    
    var movieController: MovieController!
    
}
