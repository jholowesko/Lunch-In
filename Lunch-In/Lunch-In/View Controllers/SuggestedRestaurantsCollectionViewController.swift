import UIKit

class SuggestedRestaurantsCollectionViewController: UICollectionViewController {

    // Instance of Restaurant Controller
    let restaurantController = RestaurantController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "RestaurantCell")
    }


    // MARK: - UICollectionViewDataSource

    // Number of Items in Restaurant Collection View
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return restaurantController.suggestedRestaurants.count
    }

    // Content inside each Resaturant Cell
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RestaurantCell", for: indexPath) as? SuggestedRestaurantCollectionViewCell else { return UICollectionViewCell()}
        
        cell.restaurant = restaurantController.suggestedRestaurants[indexPath.item]
        
        return cell
    }

    // MARK: UICollectionViewDelegate
}
