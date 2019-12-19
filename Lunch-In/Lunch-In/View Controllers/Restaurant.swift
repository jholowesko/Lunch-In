import Foundation


// MARK: - Restaurant Model:

struct Restuarant: Codable, Equatable {
    var restaurantName: String
    var numerOfVotes: Int
    var previewImage: String
    var didSelfVote: Bool
}
