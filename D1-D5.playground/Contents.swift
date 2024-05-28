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
// Swift's .count is an O(n) operation. But strings, arrs, dicts, sets have a .isEmpty parameter.
var username: String = ""
if username.isEmpty {
    username = "Anon"
}
print(username)
enum Sizes: Comparable {
    case small
    case medium
    case large
}
let first = Sizes.small
let second = Sizes.large
print(first < second)
enum Sizes2 {
    case small
    case medium
    case large
}
let third = Sizes2.small
let fourth = Sizes2.large
//print(third < fourth)
// We need the "Comparable" tag to make directional operators work with enums.
let temp = 25

if temp > 20 {
    if temp < 30 {
        print("It's a nice day1.")
    }
}
if temp > 20 && temp < 30 {
    print("It's a nice day2.")
}

if temp < 20 || temp < 30 {
    print("It's a nice day3.")
}
enum TransportOption {
    case airplane, helicopter, bicycle, car, scooter
}

let transport = TransportOption.airplane

if transport == .airplane || transport == .helicopter {
    print("Let's fly!")
} else if transport == .bicycle {
    print("I hope there's a bike path…")
} else if transport == .car {
    print("Time to get stuck in traffic.")
} else {
    print("I'm going to hire a scooter now!")
}

// Swift switches stop when the first case is matched. And also, the switch must contain every case. But default can be used for string matches.
enum Weather {
    case sun, rain, wind, snow, unknown
}

let forecast = Weather.sun

if forecast == .sun {
    print("It should be a nice day.")
} else if forecast == .rain {
    print("Pack an umbrella.")
} else if forecast == .wind {
    print("Wear something warm")
} else if forecast == .rain {
    print("School is cancelled.")
} else {
    print("Our forecast generator is broken!")
}

switch forecast {
case .sun:
    print("It should be a nice day2.")
case .rain:
    print("Pack an umbrella2.")
case .wind:
    print("Wear something warm2")
case .snow:
    print("School is cancelled2.")
case .unknown:
    print("Our forecast generator is broken!2")
}

// We can use "default" to handle string options to switch on a string variable, instead of a enum.
let place = "Metropolis"

switch place {
case "Gotham":
    print("You're Batman!")
case "Mega-City One":
    print("You're Judge Dredd!")
case "Wakanda":
    print("You're Black Panther!")
default:
    print("Who are you?")
}
// If we want a Java style switch then we can use the fallthrough keyword.
// This allows multiple cases to be filled
let dayNum = 5
print("My true love gave to me…")

switch dayNum {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}
// Ternary operator
let age3 = 16
let canVote = age3 >= 18 ? "Yes" : "No"
print(canVote)

let hour = 23

// print statements can handle ternary operators inside the function, but not if statements. So this is invalid:
//print(
//    if hour < 12 {
//        "It's before noon"
//    } else {
//        "It's after noon"
//    }
//)
// But this is valid:
print(hour < 12 ? "It's before noon" : "It's after noon")
// This is also valid:
if hour < 12 {
    print("It's before noon")
} else {
    print("It's after noon")
}

