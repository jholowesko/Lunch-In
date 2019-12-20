import UIKit

class SuggestedRestaurantCollectionViewCell: UICollectionViewCell {
    
    // MARK: - IBOutlets:
    
    @IBOutlet var restaurantNameLabel: UILabel!
    @IBOutlet var numberOfVotesLabel: UILabel!
    @IBOutlet var previewImage: UIImageView!
    @IBOutlet var voteButton: UIButton!
    
    
    
    // MARK: - Properties:
    
    var restaurant: Restuarant? {
        didSet {
            updateViews()
        }
    }
    
    
    
    // MARK: - Functions:
    
    // (Function) updates views when restaurant gets set.
    func updateViews() {
        guard let restaurant = restaurant else {
            print("Error loading Restaurant")
            return
        }
        restaurantNameLabel.text = restaurant.restaurantName
        numberOfVotesLabel.text = String(restaurant.numberOfVotes)
        previewImage.image = UIImage(named: restaurant.previewImage)
    }
    
    
    
    // MARK: - IBActions
    
    // Vote Button Tapped
    @IBAction func voteButtonTapped(_ sender: UIButton) {
    }
}
