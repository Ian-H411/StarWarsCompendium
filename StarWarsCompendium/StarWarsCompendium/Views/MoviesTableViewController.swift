//
//  MoviesTableViewController.swift
//  StarWarsCompendium
//
//  Created by Ian Hall on 8/15/19.
//  Copyright © 2019 Ian Hall. All rights reserved.
//

import UIKit

class MoviesTableViewController: UITableViewController {
    var movieList: [Movie]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setNeedsStatusBarAppearanceUpdate()
        tableView.estimatedRowHeight = UITableView.automaticDimension
        MovieController.fetchMovie { (movies) in
            self.movieList = movies.sorted(by: {$0.episodeId < $1.episodeId  })
            DispatchQueue.main.async {
                self.tableView.reloadData()
                
            }
        }
    }
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let movies = movieList else {return 0}
        return movies.count
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "moviecell", for: indexPath) as? MovieTableViewCell else {return UITableViewCell()}
        guard let movielist = movieList else {return UITableViewCell()}
        let movie = movielist[indexPath.row]
        cell.update(movie: movie)
        
        return cell
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "tomoviedetail"{
            if let index = tableView.indexPathForSelectedRow{
                if let toDetailVC = segue.destination as? MovieDetalTableViewController{
                    guard let movielist = movieList else {return}
                    let movieToSend = movielist[index.row]
                    toDetailVC.landingPad = movieToSend
                }
            }
        }
    }
    
}
