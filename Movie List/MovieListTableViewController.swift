//
//  MovieListTableViewController.swift
//  Sprint2 Practice
//
//  Created by Lambda_School_Loaner_64 on 5/2/19.
//  Copyright © 2019 Lambda. All rights reserved.
//

import UIKit

class MovieListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.reloadData()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieController.movies.count
    }
    
override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath)
    
    guard let movieCell = cell as? MovieTableViewCell else { return cell }
    let movie = movieController.movies[indexPath.row]
    
   // movieCell.movieLabel.text = movie.title
    
    movieCell.movie = movie
    

    return cell
}
    let movieController = MovieController()
}
