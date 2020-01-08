import Foundation
import UIKit

struct Group {
    var name: String
    var didVote: Bool
    
    init(name: String, didVote: Bool) {
        self.name = name
        self.didVote = didVote
    }
    
}
