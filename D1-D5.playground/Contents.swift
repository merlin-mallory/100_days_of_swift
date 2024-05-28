import Cocoa

var greeting = "Hello, playground"
let character = "Daphne"
//character = "Eloise"
print(character)

let movie = """
A day in
the life of an
Apple engineer
"""
print(movie)
print(movie.count)
print(movie.uppercased())
print(movie.hasPrefix("A day"))
print(movie.hasPrefix(" A day"))
var really_big = 1_000_000
really_big /= 2
print(really_big)
var counter = 8
counter /= 2
print(counter)
var num = 15
print(num.isMultiple(of: 3))
print(num.isMultiple(of: 2))
let a = 1
let b = 2.0
//let c = a + b
let c = a + Int(b)
let d = Double(a) + b

// Day 2 - Simple Data Types
// Booleans
var isAuthenticated = false
isAuthenticated = !isAuthenticated  // True
isAuthenticated = !isAuthenticated  // False
isAuthenticated.toggle()            // True
// String interpolation and type conversion
let firstPart = "Hello, "
let secondPart = "World!"
let greeting1 = firstPart + secondPart
let greeting2 = firstPart + "crazy " + secondPart
let name = "Taylor"
let age = 26
let message = "Hello, my name is \(name) and I'm  \(age) years old."
let number = 11
//let missionMessage = "Apollo " + number + " landed on the moon"        // Doesn't work, type conversion
let missionMessage1 = "Apollo " + String(number) + " landed on the moon" // Works, type conversion
let missionMessage2 = "Apollo \(number) landed on the moon"              // Works, type conversion
print("5 x 5 is \(5 * 5)")
// Checkpoint: Celsius to Farenheit conversion
let celsius = 20
let farenheit = celsius * 9 / 5 + 32
print("Celcius: \(celsius) Farenheit: \(farenheit)")
// Day 3 - Arrays, dictionaries, sets, and enums
var scores = Array<Int>()
scores.append(100)
print(scores[0])
var albums = Array<String>()
albums.append("Red")
print(albums)
var albums2 = [String]()        // [String] is same as Array<String>
albums2.append("Blue")
print(albums2)
print(albums.count)
albums2.append("Red")
albums2.append("Green")
albums2.remove(at: 1)       // .remove actually returns the value removed
print(albums2)
albums2.removeAll()
print(albums2)
var bondMovies = ["Casino Royale", "Spectre", "No Time To Die"]
print(bondMovies.contains("Frozen"))
bondMovies.sorted()     // Does not mutate
bondMovies = bondMovies.sorted()    // Does reassign
print(bondMovies)
let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidents = presidents.reversed()
print(presidents)
print(reversedPresidents)
// Dictionaries
let employee2 = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]
//print(employee2["name"])
print(employee2["name", default: "Unknown"])
var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaq"] = 216
heights["LeBron James"] = 206
print(heights)
var people = Set<String>()
people.insert("Denzel Washington")
people.insert("Tom Cruise")
people.insert("Nicolas Cage")
people.insert("Samuel L Jackson")
// Enums
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}
print(Weekday.monday)

enum Weekday2 {
    case monday, tuesday, wednesday, thursday, friday
}
var day = Weekday2.monday
day = Weekday2.tuesday
day = Weekday2.friday
day = .tuesday
day = .friday
print(day)
// Day 4 - Type annotations and checkpoint 2
var book: Set<String> = Set(["a","b","c"])
print(book)
var book2: [String] = (["a", "b", "c"])
print(book2)
var book3: [String: String] = ["id": "a"]
print(book3)
var teams: [String] = [String]()
var teams2: [String] = []
print(teams)
print(teams2)
enum UIStyle {
    case light, dark, system
}
var style: UIStyle = UIStyle.light
style = .dark
print(style)
// Checkpoint 2 - Create array of strings, and print the number of items in array, and number of unique items in the array
var games: [String] = ["League of Legends", "Final Fantasy", "League of Legends", "Cyberpunk", "League of Legends"]
print(games.count)
var games_set: Set<String> = Set(games)
print(games_set.count)
// Day 5 - Conditions
