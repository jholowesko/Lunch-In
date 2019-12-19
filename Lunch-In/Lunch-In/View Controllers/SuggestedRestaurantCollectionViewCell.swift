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
        
    }
    
    
    
    // MARK: - IBActions
    
    // Vote Button Tapped
    @IBAction func voteButtonTapped(_ sender: UIButton) {
    }
}
