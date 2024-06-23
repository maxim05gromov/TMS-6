let first = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]
let second = [15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30]
var third = first + second
print(third)


func square_array(array: [Int]) -> [Int]{
    var result: [Int] = []
    for c in array{
        result.append(c * c)
    }
    return result
}
print(square_array(array: first))

func find_even(array: [Int]) -> [Int]{
    var result: [Int] = []
    for c in array{
        if c % 2 == 0{
            result.append(c)
        }
    }
    return result
}
print(find_even(array: second))

var array = [1, 2, 3, 4]
var even = array.map({
    if $0 % 2 == 0{
        return true // Можно и без return, но так приятнее
    }else{
        return false
    }
})
print(even)

var seasons = ["Зима", "Весна", "Лето", "Осень"]
var seasonsIndexes = [0, 1, 2, 3, 2, 1, 0]
var indexesToText = seasonsIndexes.map({ seasons[$0] })
print(indexesToText)

var integers = first
var squared = integers.map({ $0 * $0 })
print(squared)

var strings: [String?] = ["Hello", nil, "world", nil, "!"]
var stringsWithoutNil = strings.filter({ $0 != nil })
print(stringsWithoutNil)

var items = [(name: "KFC", isFavorite: true), (name: "McDonalds", isFavorite: false), (name: "Burger King", isFavorite: true)]
var favorite = items.filter({ $0.isFavorite })
print(favorite)


var differentTypes = ["0", "1", "hello", "true", "0.6", "4", "world", "false"]
integers = differentTypes.compactMap({ el in
    Int(el)
})
var booleans = differentTypes.compactMap({ el in
    Bool(el)
})
print(integers, booleans)

integers = [1, 7, 2, 3, 9, 2, 4, 7, 3, 6, 3, 0]
print(integers.sorted(by: {$0 > $1}))
print(integers.sorted(by: {$1 > $0}))
integers.sort()
print(integers)
var names = ["Anna", "Ivan", "Maria", "Sergey"]
names.sort(by: >)
print(names)
