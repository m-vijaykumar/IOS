import UIKit

var greeting = "Hello, playground"


func fetch<T: Decodable>(apiUrl: URL)async throws -> [T]? {
    
    do{
        let (data, response) = try await URLSession.shared.data(from: apiUrl)
        
        if ((response as? HTTPURLResponse)?.statusCode != 200) {
            return nil
        }
        
        let decoded = try JSONDecoder().decode([T].self, from: data)
        
        return decoded
        
    }catch{
        return nil
    }
    
}

struct Item: Codable{
    var name:String
}

Task {
    do {
      
        if let item: [Item] = try await fetch(apiUrl: URL(string: "https://mocki.io/v1/ae63fef1-c913-47e6-add4-e4a2de84e159")!) {
            
            for i in item {
                print(i.name)
            }
        } else {
            print("Failed to fetch item.")
        }
    } catch {
        print("Error: \(error)")
    }
}
