import UIKit

class SuggestedRestaurantCollectionViewCell: UICollectionViewCell {
    
    // MARK: - IBOutlets:
    
    
    
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
}
