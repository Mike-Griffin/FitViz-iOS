//
//  FVDataManager.swift
//  FitViz-iOS
//
//  Created by Mike Griffin on 12/18/21.
//

import Foundation

class FVDataManager {
    static let shared = FVDataManager()
    
    func createUser() async -> FVUser? {
        let urlString = "http://localhost:8000/user/"
        let url = URL(string: urlString)!
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "POST"
        do {
            let (data, response) = try await URLSession.shared.data(for: urlRequest)
            do {
                print(response)
                let user = try JSONDecoder().decode(FVUserResponse.self, from: data)
                print(user)
                return user.data
            }
            catch {
                print(error.localizedDescription)
                return nil
            }
            return nil
        } catch {
            return nil
        }
    }
}
