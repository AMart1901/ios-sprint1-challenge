//
//  MovieListTableViewController.swift
//  Sprint2 Practice
//
//  Created by Lambda_School_Loaner_64 on 5/2/19.
//  Copyright © 2019 Lambda. All rights reserved.
//

import UIKit

class MovieListTableViewController: UITableViewController, MovieTableViewCellDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    func seenButtonWasTapped(for cell: MovieTableViewCell) {
        guard let indexPath = tableView.indexPath(for: cell) else { return }
        movieController.movies[indexPath.row].hasSeen.toggle()
        tableView.reloadRows(at: [indexPath], with: .automatic)
    }

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieController.movies.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell
            else { fatalError("Unable to dequeue cell")}
        let movie = movieController.movies[indexPath.row]
        cell.movie = movie
        cell.delegate = self
    
        return cell
    }
    
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "movieSegue" {
            guard let addMovieVC = segue.destination as? AddMovieViewController else { return }
            addMovieVC.movieController = movieController
        }
    }
    
    var movieController = MovieController()
}



