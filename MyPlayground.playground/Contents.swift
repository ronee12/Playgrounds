


import Foundation

struct User: Decodable {
    let name: String
    let email: String
    let age: Int
    
    enum CodingKeys: String, CodingKey {
      case name
      case email
      case age
    }
    
}

let jsonData = """
{
  "name": "John Doe",
  "email": "john.doe@example.com",
  "age": 30
}
""".data(using: .utf8)!



if let parsedData = try? JSONDecoder().decode(User.self, from: jsonData) as? User {
    print("failed")
    print(parsedData)
}


