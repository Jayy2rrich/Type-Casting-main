/*:
## Exercise - Type Casting and Inspection

 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
var collection: [Any] = [100, "Jordan", 89.53, "Iphone", 210, 1_099.99, true, false]
//:  Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
for i in collection{
    if let i = i as? String{
        print("The string has a value of \(i)")
    }
    if let i = i as? Int{
        print("The integer has a value of \(i)")
    }
    if let i = i as? Double{
        print("The double has a value of \(i)")
    }
    if let i = i as? Bool{
        print("The boolean has a value of \(i)")
    }
}
//:  Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
var dictionary: [String: Any] = ["Hello": 6, "Iphone": 1_099.99, "Is cool": false, "Jordan 4": 210]
//:  Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
var total: Double = 0

for (_, value) in dictionary{
    if let number = value as? Int{
        total = total + Double(number)
    }
    else if let number = value as? Double{
        total = total + number
    }
    else if let word = value as? String{
            total += 1
    }
    else if let bool = value as? Bool{
        if bool == true{
            total += 2
        }
        else{
            total -= 3
        }
    }
}

print(total)
//:  Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
var total2: Double = 0

for (_, value) in dictionary{
    if let number = value as? Int{
        total2 = total2 + Double(number)
    } else if let number = value as? Double{
        total2 = total2 + number
    } else if let string = value as? String {
        if let validNumber = Double(string) {
            total2 = total2 + validNumber
        }
    }
}

print(total2)

/*:
page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
 */
