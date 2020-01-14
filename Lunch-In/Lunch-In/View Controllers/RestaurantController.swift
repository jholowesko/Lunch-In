import Foundation

class RestaurantController {
    
    
    // MARK: - Properties:

    var suggestedRestaurants: [Restuarant] = []
    
    
    
    // MARK: - Initializer:
    
    // loading from Persistent store
    init() {
        loadFromPersistentStore()
        print("Loaded from Persistent Store")
    }
    
    
    
    // MARK: - Functions:
    
    // (Function) to create a new Restaurant
    @discardableResult func createRestaurant(restaurantName: String, previewImage: String) -> Restuarant {
        let suggestedRestaurant = Restuarant(restaurantName: restaurantName, numberOfVotes: 0, previewImage: previewImage, didSelfVote: false)
        suggestedRestaurants.append(suggestedRestaurant)
        return suggestedRestaurant
    }
    
    
    
    // MARK: - Persistent Storage:
    
    // (Creating) Persistent URL
    private var persistentFileURL: URL? {
        let fileManager = FileManager.default
        guard let documents = fileManager.urls(for: .documentDirectory, in: .userDomainMask).first else { return nil }
        
        return documents.appendingPathComponent("SuggestedRestaurants.plist")
    }
    
    // (Funciton) Saving to Persistent Store
    func saveToPersistentStore() {
        guard let url = persistentFileURL else { return }
        
        do {
            let encoder = PropertyListEncoder()
            let data = try encoder.encode(suggestedRestaurants)
            try data.write(to: url)
        } catch {
            print("Error saving Suggested Restaurants data: \(error)")
        }
    }
    
    // (Function) Loading from Persistent Store
    func loadFromPersistentStore() {
        let fileManager = FileManager.default
        guard let url = persistentFileURL,
            fileManager.fileExists(atPath: url.path) else { return }
        
        do {
            let data = try Data(contentsOf: url)
            let decoder = PropertyListDecoder()
            suggestedRestaurants = try decoder.decode([Restuarant].self, from: data)
        } catch {
            print("Error loading Suggested Restaurants data: \(error)")
        }
    }
}
