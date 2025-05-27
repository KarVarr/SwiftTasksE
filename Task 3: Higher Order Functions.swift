let books = [
["title": "Swift Fundamentals", "author": "John Doe", "year": 2015, "price": 40, "genre": ["Programming", "Education"]],
["title": "The Great Gatsby", "author": "F. Scott Fitzgerald", "year": 1925, "price": 15, "genre": ["Classic", "Drama"]],
["title": "Game of Thrones", "author": "George R. R. Martin", "year": 1996, "price": 30, "genre": ["Fantasy", "Epic"]],
["title": "Big Data, Big Dupe", "author": "Stephen Few", "year": 2018, "price": 25, "genre": ["Technology", "Non-Fiction"]],
["title": "To Kill a Mockingbird", "author": "Harper Lee", "year": 1960, "price": 20, "genre": ["Classic", "Drama"]]
]

var discountedPrices: [Double] = []

discountedPrices = books.compactMap { Double($0["price"] as? Int ?? 0) * 0.9}
print(discountedPrices)


var booksPostedAfter2000: [String] = []
booksPostedAfter2000 = books.filter { $0["year"] as? Int ?? 0 > 2000}.compactMap {$0["title"] as? String}

print(booksPostedAfter2000)


var genres: [[String]] = []
var allGenres: Set<String> = []
genres = books.compactMap { $0["genre"] as? [String]}
allGenres = Set(genres.flatMap {$0})

print(genres)
print(allGenres)


var totalCost: Int
totalCost = books.compactMap { $0["price"] as? Int}.reduce (0,+)

print(totalCost)
