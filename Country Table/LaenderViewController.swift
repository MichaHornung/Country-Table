//
//  LaenderViewController.swift
//  Country Table
//
//  Created by Michael Hornung on 17.11.22.
//

import UIKit



struct Laender{
    let hauptstadt: String
    let sprache: String
    let imageFlag: UIImage
}


class LaenderViewController: UIViewController {
    
    @IBOutlet weak var laenderTableView: UITableView!
    
    var laenders = [
        Laender(hauptstadt: "Berlin", sprache: "Deutsch", imageFlag: UIImage(named: "Germany")!),]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        laenderTableView.dataSource = self
        laenderTableView.delegate = self
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationViewController = segue.destination as? DetailViewController
        let laender = sender as? Laender
        destinationViewController!.laender = laender!
    }
}

extension LaenderViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return laenders.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = laenderTableView.dequeueReusableCell(withIdentifier: "laenderCell", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        content.text = laenders[indexPath.row].hauptstadt
        cell.contentConfiguration = content
        
        return cell
        
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedLaenders = laenders[indexPath.row]
        performSegue(withIdentifier: "show", sender: selectedLaenders)
    }
}
