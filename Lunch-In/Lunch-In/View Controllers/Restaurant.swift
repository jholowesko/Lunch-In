import Foundation
import UIKit

// MARK: - Restaurant Model:

struct Restuarant: Codable, Equatable {
    var restaurantName: String
    var numberOfVotes: Int //number was mispelled so I changed it along with in the other controllers
    var previewImage: String
    var didSelfVote: Bool

    
    var image: UIImage {
        return UIImage(named: previewImage)!
    }
    
    //made a computed property so that I could call the image on my AddPreviewCollectionViewController by the image in assests even though it is of type String
}
