//
//  MovieListTableViewController.swift
//  Sprint2 Practice
//
//  Created by Lambda_School_Loaner_64 on 5/2/19.
//  Copyright © 2019 Lambda. All rights reserved.
//

import UIKit

class MovieListTableViewController: UITableViewController, MovieTableViewCellDelegate {
    func seenButtonWasTapped(for cell: MovieTableViewCell) {
       
            guard let indexPath = tableView.indexPath(for: cell) else { return }
            let movie = movieController.movies[indexPath.row]
            
            
            movieController.toggleseen(for: movie)
            
            tableView.reloadRows(at: [indexPath], with: .automatic)
        }
    }
    

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
    
    movieCell.movie = movie

    

    return cell
    }
}
    
    let movieController = MovieController()

