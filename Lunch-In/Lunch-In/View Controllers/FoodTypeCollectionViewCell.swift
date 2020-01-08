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
        restaurant?.didSelfVote.toggle()
        if restaurant?.didSelfVote == false {
            selectButton.setTitle("Not Added", for: .normal)
        } else {
            selectButton.setTitle("Added", for: .normal)
        }
        
        
        
        restaurantController?.createRestaurant(restaurantName: restaurant!.restaurantName, previewImage: restaurant!.previewImage)
        
        
    }
    
    
    //MARK: - Properties
    var restaurantController: RestaurantController?
    
    var restaurant: Restuarant? {
        didSet {
            updateViews()
            
        }
    }
    
    //MARK: - Functions
    //creates and appends food type to SuggestedRestaurantCollectionViewController
    func createSuggestedRestaurant(restaurantName: String, numberOfVotes: Int, previewImage: String, didSelfVote: Bool) {
        let suggestedRestaurant = Restuarant(restaurantName: restaurantName, numberOfVotes: numberOfVotes, previewImage: previewImage, didSelfVote: didSelfVote)
        
        restaurantController?.suggestedRestaurants.append(suggestedRestaurant)
    }
    
    func updateViews() {
            guard let restaurant = restaurant else {
                print("Error loading Restaurant")
                return
            }
        imageView.image = UIImage(contentsOfFile: restaurant.previewImage)
        foodLabel.text = restaurant.restaurantName
        
        }
}
