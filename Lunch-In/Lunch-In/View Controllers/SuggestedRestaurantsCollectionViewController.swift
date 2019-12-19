import UIKit

class SuggestedRestaurantsCollectionViewController: UICollectionViewController {

    
    // MARK: - Initial Setup:
    
    // Instance of Restaurant Controller
    let restaurantController = RestaurantController()
    
    // View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "RestaurantCell")
    }


    
    // MARK: - UICollectionViewDataSource:
    
    // Number of Restaurants in Collection View
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return restaurantController.suggestedRestaurants.count
    }

    // Content inside Resaturant Cell
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RestaurantCell", for: indexPath) as? SuggestedRestaurantCollectionViewCell else { return UICollectionViewCell()}
        
        cell.restaurant = restaurantController.suggestedRestaurants[indexPath.item]
        
        return cell
    }

    
    
    // MARK: UICollectionViewDelegate:
}
