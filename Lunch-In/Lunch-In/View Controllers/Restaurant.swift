import Foundation
import UIKit

// MARK: - Restaurant Model:

struct Restuarant: Codable, Equatable {
    var restaurantName: String
    var numberOfVotes: Int //number was mispelled so I changed it along with in the other controllers
    var previewImage: String
    var didSelfVote: Bool
<<<<<<< HEAD
    // var foodOption: String | Added This
    // New Commment
    // this property will help me in my foodTypeCollectionViewCell as well as my AddPreviewCollectionViewController
=======
>>>>>>> 4698d4211e7a03dcc4dcf71bd9aa2750a95c6fb3

    
    var image: UIImage {
        return UIImage(named: previewImage)!
    }
    
    //made a computed property so that I could call the image on my AddPreviewCollectionViewController by the image in assests even though it is of type String
}
