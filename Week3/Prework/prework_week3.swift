 //Array
 let john = "John Lennon"
 let paul = "Paul MacCartney"
 let george = "George Harrison"
 let ringo = "Ringo Starr"

 let beatles = [john, paul, george, ringo]
 print(beatles)
 print(beatles[1])
//Set
let colors = Set(["red", "green", "blue"])
print(colors)
let colors2 = Set(["red", "green", "blue", "red", "blue"])
print(colors2)

// Tuplas
var name = (first: "Taylor", last: "Swift")
print(name)
print(name.0)
print(name.first)
name.0 = "Miry"
print(name.0) 
let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")
print(address)

let set = Set(["aardvark", "astronaut", "azalea"])
print(set)

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
print(pythons)

// Diccionarios
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]
print(heights)
print(heights["Taylor Swift"])
let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]

print(favoriteIceCream["Paul"])
print(favoriteIceCream["Charlotte"])
print(favoriteIceCream["Charlotte", default: "Unknown"])

// Diccionario 
var teams = [String: String]()
print(teams)
teams["Paul"] = "Red"
print(teams["Paul"])

// Array
var results = [Int]()
print(results)
results.append(1)
print(results)

// SET
var words = Set<String>()
print(words)
var numbers = Set<Int>()
print(numbers)
var scores = Dictionary<String, Int>()
print(scores)
var results2 = Array<Int>()
print(results2)

// Enumerales
enum Result {
    case success
    case failure
}
let result4 = Result.failure
print(result4)

enum Activity {
    case bored
    case running
    case talking
    case singing
}
enum Activity2 {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}
let talking = Activity2.talking(topic: "football")
print(talking)

enum Planet: Int {
    case mercury
    case venus
    case earth
    case mars
}
let earth = Planet(rawValue: 2)
print(earth)

enum Planet2: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}
let earth2 = Planet2(rawValue:1)
print(earth2)

// Loops
let count = 1...10
for number in count {
    print("Number is \(number)")
}
let albums = ["Red", "1989", "Reputation"]
for album in albums {
    print("\(album) is on Apple Music")
}

print("Players gonna ")

for _ in 1...5 {
    print("play")
}

// Ciclos while
var number = 1

while number <= 20 {
    print(number)
    number += 1
}

print("Ready or not, here I come!")

// Ciclos repetitivos
var number2 = 1

repeat {
    print(number2)
    number2 += 1
} while number2 <= 20

print("Ready or not, here I come!")
while false {
    print("This is false")
}
repeat {
    print("--This is false")
} while false

var countDown = 10
while countDown >= 0 {
    print(countDown)

    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }

    countDown -= 1
}

for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")
    }
}

outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")

        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}

outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")
    }
}

for i in 1...10 {
    if i % 2 == 1 {
        continue
    }

    print(i)
}


// STRUCTS 
struct Sport {
    var name: String // stored property
}
var tennis = Sport(name: "Tennis")
print(tennis.name)
tennis.name = "Lawn tennis"
print(tennis.name)

// Computed properties
struct Sport2 {
    var name: String
    var isOlympicSport: Bool

    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}

let chessBoxing = Sport2(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)
let swimming = Sport2(name: "Swimming", isOlympicSport: true)
print(swimming.olympicStatus)


/*
observers
*/
struct Progress {
    var task: String
    var amount: Int
}

var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100
print(progress.amount)

struct Progress2 {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}
var progress2 = Progress2(task: "Loading data", amount: 0)
progress2.amount = 30
progress2.amount = 80
progress2.amount = 100

struct Progress3 {
    var task: String
    var amount: Int {
        willSet {
            print("\(task) is change to \(amount)% complete")
        }
    }
}
var progress3 = Progress3(task: "Loading data", amount: 0)
progress3.amount = 30
progress3.amount = 80
progress3.amount = 100

struct City {
    var population: Int

    func collectTaxes() -> Int {
        return population * 1000
    }
}
let london = City(population: 9_000_000)
let myLondon = london.collectTaxes()
print(myLondon)

struct Person {
    var name: String

    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

var person = Person(name: "Ed")
person.makeAnonymous()
print(person.name)

let string = "Do or do not, there is no try."
print(string.count)
print(string.hasPrefix("Do"))
print(string.uppercased())
print(string.sorted())
var toys = ["Woody"]
print(toys.count)
toys.append("Buzz")
print(toys)
toys.firstIndex(of: "Buzz")
print(toys.firstIndex(of: "Buzz"))
print(toys.sorted())
toys.remove(at: 0)
print(toys)
struct User {
    var username: String
}
var user = User(username: "twostraws")
print(user)

struct User2 {
    var username: String

    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}

var user2 = User2()
user2.username = "twostraws"
print(user2.username)
struct PersonSelf {
    var name: String

    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}
var myPerson = PersonSelf(name: "Nash")
print(myPerson.name)
struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct PersonLazy {
    var name: String
    lazy  var familyTree = FamilyTree()

    init(name: String) {
        self.name = name
    }
}

var ed = PersonLazy(name: "Ed")
print(ed.familyTree)
struct Student {
    var name: String

    init(name: String) {
        self.name = name
    }
}

let ed2 = Student(name: "Ed")
print(ed2.name)
let taylor = Student(name: "Taylor")
print(taylor.name)
struct StudentStatic {
    static var classSize = 0
    var name: String

    init(name: String) {
        self.name = name
        StudentStatic.classSize += 1
    }
}
let ed3 = StudentStatic(name: "Ed")
print(StudentStatic.classSize)
struct PersonId {
    var id: String

    init(id: String) {
        self.id = id
    }
}

let edId = PersonId(id: "12345")
print(edId.id)
struct PersonPrivate {
    private var id: String

    init(id: String) {
        self.id = id
    }
}
struct PersonPrivateTrue {
    private var id: String

    init(id: String) {
        self.id = id
    }

    func identify() -> String {
        return "My social security number is \(id)"
    }
}

let edIdPriv2 = PersonPrivateTrue(id: "12345")
print(edIdPriv2.identify())

// CLASS
class Dog {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}
let poppy = Dog(name: "Poppy", breed: "Poodle")
print(poppy.name, poppy.breed)


// Herencia de clases

class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}
let perrito = Poodle(name: "Perrito")
print(perrito.name, perrito.breed)

//Métodos de anulación

class DogNoise {
    func makeNoise() {
        print("Woof!")
    }
}
class PoodleNoise: DogNoise {
}

let poppyNoise = PoodleNoise()
poppyNoise.makeNoise()
class PoodleOverride: DogNoise {
    override func makeNoise() {
        print("Yip!")
    }
}
let poppyNoiseOverride = PoodleOverride()
poppyNoiseOverride.makeNoise()
final class DogFinal {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}
let poppyFinal = DogFinal(name: "Patitas de coneja", breed: "Labarador")
print(poppyFinal.name, poppyFinal.breed)

class Singer {
    var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)

var singerCopy = singer
singerCopy.name = "Justin Bieber"
print(singer.name)

class Person {
    var name = "John Doe"

    init() {
        print("\(name) is alive!")
    }

    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    deinit {
        print("\(name) is no more!")
    }
}

for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}
//Mutabilidad

class SingerMutate {
    var name = "Taylor Swift"
}

let taylor = SingerMutate()
taylor.name = "Ed Sheeran"
print(taylor.name)
class SingerConst {
    let name = "Taylor Swift"
}
let taylor2 = SingerConst()
print(taylor2.name)
 
//OPTIONALS
var age: Int? = nil
age = 38
print(age)
var name: String? = nil
if let unwrapped = name {
    print("\(unwrapped.count) letters")
} else {
    print("Missing name.")
}

func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return
    }

    print("Hello, \(unwrapped)!")
}
greet("Nash")
greet(nil)

let str = "5"
let num = Int(str)
let num2 = Int(str)!
let age: Int! = nil

func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}

let user = username(for: 15) ?? "Anonymous"
print(user)
let names = ["John", "Paul", "George", "Ringo"]
let beatle = names.first?.uppercased()
print(beatle)
let names2 = [nil, "Paul", "George", "Ringo"]
enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

if let result = try? checkPassword("password") {
    print("Result was \(result)")
} else {
    print("D'oh.")
}
if let result2 = try? checkPassword("password2") {
    print("Result was \(result2)")
} else {
    print("D'oh.")
}
try! checkPassword("sekrit")
print("OK!")

struct Person {
    var id: String

    init?(id: String) {
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
}
let abril =  Person(id: "123456789")
print(abril == nil) 
let abril2 =  Person(id: "1234")
print(abril2 == nil)

//Typecasiting

class Animal { }
class Fish: Animal { }

class Dog: Animal {
    func makeNoise() {
        print("Woof!")
    }
}
let pets = [Fish(), Dog(), Fish(), Dog()]
for pet in pets {
    if let dog = pet as? Dog {
        dog.makeNoise()
    }
}