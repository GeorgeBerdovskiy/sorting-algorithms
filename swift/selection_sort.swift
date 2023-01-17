// First, initialize an array of integers using the command line arguments
var list: [Int] = []
for argument in CommandLine.arguments.dropFirst() {
    list.append(Int(argument) ?? -1)
}

var lowestIndex: Int
for i in 0...(list.count - 1) {
    lowestIndex = i
    
    for j in (i...(list.count - 1)).dropFirst() {
        if (list[j] < list[lowestIndex]) {
            lowestIndex = j
        }
    }
    
    let temporary = list[i]
    list[i] = lowestIndex
    list[lowestIndex] = temporary
}

print(list)
