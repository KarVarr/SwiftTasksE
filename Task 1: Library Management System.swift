protocol Borrowable {
    var borrowDate: Date? {get set}
    var returnDate: Date? {get set}
    var isBorrowed: Bool {get set}
    mutating func checkIn()
}

extension Borrowable {
    func isOverdue() -> Bool {
        guard let returnDate = returnDate else {return false}
        return Date() > returnDate
    }
    mutating func checkIn() {
        borrowDate = nil
        returnDate = nil
        isBorrowed = false
    }
}

class Item {
    let id: String
    let title: String
    let author: String

    init(id: String, title: String, author: String) {
        self.id = id
        self.title = title
        self.author = author
    }
}

class Book: Item, Borrowable {
    var borrowDate: Date?
    var returnDate: Date?
    var isBorrowed: Bool = false
}

enum LibraryError: Error {
    case itemNotFound
    case itemNotBorrowable
    case alreadyBorrowed
}

class Library {
    var items: [String: Item] = [:]
    func addBook(_ book: Book) {
        items[book.id] = book
    }

    func borrowItem(by id: String) throws -> Item {
        guard let item = items[id] else {
            throw LibraryError.itemNotFound
        }
        guard let book = item as? Book else {
            throw LibraryError.itemNotBorrowable
        }
        if book.isBorrowed {
            throw LibraryError.alreadyBorrowed
        }
        
        book.borrowDate = Date()
        book.returnDate = Calendar.current.date(byAdding: .day, value: 5, to: Date())
        book.isBorrowed = true
        return book
    }
}
