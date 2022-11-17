//
//  ViewController.swift
//  Country Table
//
//  Created by Michael Hornung on 17.11.22.
//

import UIKit

class DetailViewController: UIViewController {

    var laender: Laender!
    

    @IBOutlet weak var imageFlag: UIImageView!
    @IBOutlet weak var hauptstadt: UILabel!

    @IBOutlet weak var sprache: UILabel!
   
    

    
   
    

    override func viewDidLoad() {
        super.viewDidLoad()
        hauptstadt.text = laender.hauptstadt
        sprache.text = laender.sprache
        imageFlag.image = laender.imageFlag
    }
}

