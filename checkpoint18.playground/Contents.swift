//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// Declaring properties
let fullName = "Dumbledore"
var mostRecentlyEatenMeal = "Owl Burger"


//Strings and String Interpolation

let a = 3
let b = 5
let streetName = "Privet Drive"
let uppercaseStreetName = streetName.uppercaseString
var familyDescription = "TERRIBLE"
familyDescription += ",AWFUL"
let fullSentence = "HARRY POTTER LIVES ON \(a+b) \(uppercaseStreetName) WITH HIS \(familyDescription) FAMILY."

//Arrays and Dictionaries
var badGuys = ["Draco", "Severus", "Sirius"]
var ron = ["name" :"ron", "hair color" :"red"]

//Loops

for var i = 1; i<4; i++ {
    //do something with i
}

// in loops
for diagonAlleyShopNumber in 100...200 {
    print("I head you can get some really sweet wands at \(diagonAlleyShopNumber) Diagon Alley")
}

//looping over dictionaries 
let ronWeasley = ["name" : "ron", "hair color":"red"]
for (characteristic, descriptionOfCharacteristic) in ronWeasley {
    print("His \(characteristic) is \(descriptionOfCharacteristic).")
}

//functions
func printHarrysName() {
    print("Harry Potter")
}

printHarrysName()

func printHarrysMovieTitle(name:String) {
    print("Harry Potter and \(name)")
}

printHarrysMovieTitle("the Goblet of Fire")


func createHarrysMovieTitle(name: String = "the Sorcerer's Stone") -> String {
    return "Harry Potter and " + name
}

let title = createHarrysMovieTitle()
print(title)


//Tuples --a lightweight data structure that compounds multiple values into one

let emergencyNumber = (911, "Police, Fire or Ambulance")


func createHarrysMovieTitle(name: String = "the Sorcerer's Stone") -> (Int, String) {
    let ratingStars = 5
    let title = "Harry Potter and " + name
    return (ratingStars, title)
}

let (rating, fullTitle) = createHarrysMovieTitle()
print("\(fullTitle) got \(rating) stars. Let's see it!")


func acreateHarrysMovieTitle(name: String = "the Sorcerer's Stone") -> (starRating: Int, title: String) {
    let ratingStars = 5
    let title = "Harry Potter and " + name
    return (ratingStars, title)
}

// Example usage
let movie = acreateHarrysMovieTitle()
println("\(movie.title) got \(movie.starRating) stars. Let's see it!")

//Optionals

let potterBoy = ["name" : "harry", "mark" :" forehead"]

let theMistsOfAvalon : [String: String] = potterBoy

let author = theMistsOfAvalon["author"]

if author != nil {
    
    let unwrappedAuthor = author!
    print("The author is \(unwrappedAuthor).")
} else {
    print("We don't know who wrote this.")
}


//if let notation

let theMistsOfAvalon : [String : String] = potterBoy

if let unwrappedAuthor1 = theMistsOfAvalon["author"] {
    print("the author is \(unwrappedAuthor1).")
} else {
    print("We don't know who wrote this.")
}

//Optional Chaining

var numberOfPagesInTheMistsOfAvalon : String?

if let books = mediaDict["books"] {
    if let mistsOfAvalon = books["The Mists of Avalon"] {
        if let numberOfPages = mistsOfAvalon["number_of_pages"] {
            numberOfPagesInTheMistsOfAvalon = numberOfPages
        }
    }
}

if let pageCount = numberOfPagesInTheMistsOfAvalon {
    print(pageCount)
}


//simplify

if let numberOfPagesInTheMistsOfAvalon = mediaDict["books"]?["The Mists of Avalon"]?["number_of_pages"] {
    println(numberOfPagesInTheMistsOfAvalon) // prints "876"
}

//Closures

//ex using SORTED





