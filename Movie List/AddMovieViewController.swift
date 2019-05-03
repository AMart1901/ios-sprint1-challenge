//
//  AddMovieViewController.swift
//  Sprint2 Practice
//
//  Created by Lambda_School_Loaner_64 on 5/2/19.
//  Copyright © 2019 Lambda. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

     
    }
    
    @IBAction func addMovieButtonPressed(_ sender: Any) {
    
        guard let title = moviesTextView.text, !title.isEmpty else { return }
    
        MovieController.createMovie(withText: title)
        
        theTableView.reloadData()
        
        moviesTextView.text = ""
    }
    
    
    @IBOutlet weak var moviesTextView: UITextField!
    


}
