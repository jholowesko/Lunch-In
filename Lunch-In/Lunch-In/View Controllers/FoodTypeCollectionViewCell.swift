//
//  FoodTypeCollectionViewCell.swift
//  Lunch-In
//
//  Created by Kevin Stewart on 12/19/19.
//  Copyright © 2019 John Holowesko. All rights reserved.
//

import UIKit

class FoodTypeCollectionViewCell: UICollectionViewCell {
    
    //MARK: - Outlets
    
    @IBOutlet var selectButton: UIButton!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var foodLabel: UILabel!
    
    //MARK: - IBActions
    @IBAction func selectButtonTapped(_ sender: UIButton) {
    }
    
    
    //MARK: - Properties
    
    var restaurant: Restuarant? {
        didSet {
            updateViews()
        }
    }
    
    //MARK: - Functions
    
    func updateViews() {
            guard let restaurant = restaurant else {
                print("Error loading Restaurant")
                return
            }
        imageView.image = UIImage(contentsOfFile: restaurant.previewImage)
        foodLabel.text = restaurant.restaurantName
        }
}
