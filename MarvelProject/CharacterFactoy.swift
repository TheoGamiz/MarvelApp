//
//  CharacterFactoy.swift
//  MarvelProject
//
//  Created by Rafiq Messai on 14/01/2022.
//

import Foundation

class CharacterFactory {
    
    
    class func createCharacter(from dict: [String: Any]) -> MarvelCharacters? {
        guard let id = dict["id"] as? Int,
              let name = dict["name"] as? String,
              let details = dict["description"] as? String,
              let thumbnail = dict["path"] as? String?,
              //let ressourceURL = dict["RessourceURI"] as? String,
              let modified = dict["modified"] as? String else {
                  return nil
              }
        
        return MarvelCharacters(id: id, name: name,details: details,modified: modified/*thumbnail:thumbnail,ressourceURL: ressourceURL*/)
    }
    
    
    class func addImage(character:MarvelCharacters,from dict: [String: Any]) -> Void{
        var thumbnail = dict["path"] as! String
        //var i = thumbnail.index(thumbnail.startIndex, offsetBy: 4)
        //thumbnail.insert("s", at: i)
        var imageFormat = dict["extension"] as! String
        let lien = "\(thumbnail).\(imageFormat)"
        let lienComplete = URL(string: lien)
        print(character.details)
        
        character.thumbnail = lienComplete
    }
    
    
    
    
}