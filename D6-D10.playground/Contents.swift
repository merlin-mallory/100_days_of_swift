import Cocoa

// Day 6 - Loops
let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works great on \(os).")
}
// This prints 1 - 3, inclusive at end
for i in 1...3 {
    print("5 x \(i) is \(5 * i)")
}
// This prints 1 - 3, exclusive at end
for i in 1..<3 {
    print("Counting 1 up to \(i)")
}
var lyric = "Haters gonna"

for _ in 1...5 {
    lyric += " hate"
}

// These slices are all inclusive, based upon index
print(lyric)
print(platforms[1...2])
print(platforms[1...])
print(platforms[...3])

// While loops
var roll = 0
while roll != 20 {
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll)")
}

// We can use labels with for loops to break out of multiple loops at once
let options = ["up", "down", "left", "right"]
let secretCombination = ["up", "up", "right"]
outerLoop: for option1 in options {
    for option2 in options {
        for option3 in options {
            print("In loop")
            let attempt = [option1, option2, option3]

            if attempt == secretCombination {
                print("The combination is \(attempt)!")
                break outerLoop
            }
        }
    }
}

// Checkpoint 3 - Fizzbuzz
// our goal is to loop from 1 through 100, and for each number:
//
//If it’s a multiple of 3, print “Fizz”
//If it’s a multiple of 5, print “Buzz”
//If it’s a multiple of 3 and 5, print “FizzBuzz”
//Otherwise, just print the number.
// first 7: [1, 2, Fizz, 4, Buzz, Fizz, 7]
for n in 1...7 {
    if (n % 3) == 0 {
        if (n % 5 == 0) {
            print("FizzBuzz")
        } else {
            print("Fizz")
        }
    } else if (n % 5 == 0) {
        print("Buzz")
    } else {
        print(n)
    }
}
