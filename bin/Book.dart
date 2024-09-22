class Book {
  static int totalBooks = 0; // Static property to keep track of total books

  String title;
  String author;
  int publicationYear;
  int pagesRead;

  // Constructor
  Book(this.title, this.author, this.publicationYear) 
      : pagesRead = 0 {
    totalBooks++; // Increment totalBooks whenever a new book is created
  }

  // Method to read pages
  void read(int pages) {
    if (pages < 0) {
      throw ArgumentError("Number of pages read cannot be negative.");
    }
    pagesRead += pages;
  }

  // Method to get pages read
  int getPagesRead() {
    return pagesRead;
  }

  // Method to get title
  String getTitle() {
    return title;
  }

  // Method to get author
  String getAuthor() {
    return author;
  }

  // Method to get publication year
  int getPublicationYear() {
    return publicationYear;
  }

  // Method to get book age
  int getBookAge() {
    final currentYear = DateTime.now().year;
    return currentYear - publicationYear;
  }

  // Static method to get total books
  static int getTotalBooks() {
    return totalBooks;
  } 
}