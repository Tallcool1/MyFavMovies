//
//  DetailViewController.swift
//  MyFavMovies
//
//  Created by webstudent on 2/19/15.
//  Copyright (c) 2015 Rock Valley College. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var ProductImageView: UIImageView!
    //@IBOutlet weak var detailDescriptionLabel: UILabel!


    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            //self.configureView()
        }
    }
    
    var productName: NSString? {
        didSet {
            
        }
    }
    
    var productURL: NSString? {
        didSet {
            // Update the view.
            // self.configureView()
        }
    }


    func configureView() {
        // Update the user interface for the detail item.
        if let detail: AnyObject = self.detailItem {
            ProductImageView.image = UIImage(named:productURL!)
            
        }
    
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        println("Product URL: \(productURL)")
        println("Product Name: \(productName)")
        if productName == nil
        {
            ProductImageView.image = UIImage(named:"Main.png")
        }
        title = productName
        self.configureView()
    }

    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


