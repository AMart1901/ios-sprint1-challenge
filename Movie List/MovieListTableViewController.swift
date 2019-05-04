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
        
            tableView.reloadRows(at: [indexPath], with: .automatic)

    
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
         tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieController.movies.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { return UITableViewCell()}
    
    let movie = movieController.movies[indexPath.row]
        cell.movie = movie
        cell.delegate = self
    
    
    
    return cell
    }
    
    var movieController = MovieController()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "movieSegue" {
            guard let destinationVC = segue.destination as? AddMovieViewController else { return }
            
            destinationVC.movieController = movieController
        }
    }
}



