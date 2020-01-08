import UIKit

protocol AddNewRestaurantDelegate {
    func addNewRestaurant(_ restaurant: Restuarant)
}

private let reuseIdentifier = "Cell"

class AddPreviewCollectionViewController: UICollectionViewController {
    
    //MARK: - Properties
    
    var delegate: AddNewRestaurantDelegate?
    
    var previewImages: [String] = ["apple", "burger", "bread", "carrot", "chefhat", "chopsticks", "coffee", "drumstick", "fries", "grapes", "grater", "grill", "orange", "picnic", "pizza", "popsicle", "softdrink", "strawberry", "watermelon", "wine", "wisk", "spatula"]
    
    var restaurantController = RestaurantController()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    //creates cell for each food type
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return previewImages.count
    }
    //lets cells take the name and image for each type of food
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FoodPreviewCell", for: indexPath) as? FoodTypeCollectionViewCell else { return UICollectionViewCell()}
        
        
        cell.imageView.image = UIImage(named: previewImages[indexPath.item])
        cell.foodLabel.text = previewImages[indexPath.item]
    
        return cell
    }
    
    
    //allows user to select which type of food type they want
//    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        restaurantController.suggestedRestaurants(indexPath: indexPath)
//        self.collectionView.reloadData()
//
//
//    }
    
    //MARK: - IBActions
    
//    //creates and appends food type to SuggestedRestaurantCollectionViewController
//    func createSuggestedRestaurant(restaurantName: String, numberOfVotes: Int, previewImage: String, didSelfVote: Bool) {
//        let suggestedRestaurant = Restuarant(restaurantName: restaurantName, numberOfVotes: numberOfVotes, previewImage: previewImage, didSelfVote: didSelfVote)
//        
//        restaurantController.suggestedRestaurants.append(suggestedRestaurant)
//    }

}
//MARK: - Extensions
//extension SuggestedRestaurantsCollectionViewController: AddNewRestaurantDelegate {
//    func addNewRestaurant(_ restaurant: Restuarant) {
//        restaurantController.append(SuggestedRestaurantCollectionViewCell)
//        collectionView.reloadData()
//    }
//
//
//}
