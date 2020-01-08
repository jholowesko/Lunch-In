import Foundation
import UIKit


// MARK: - Restaurant Model:

struct Restuarant: Codable, Equatable {
    var restaurantName: String
    var numberOfVotes: Int
    var previewImage: String
    var didSelfVote: Bool
}
