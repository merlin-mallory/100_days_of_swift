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

