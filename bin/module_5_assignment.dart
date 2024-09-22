

import 'Book.dart';
void main() {

  // Create three Book objects
  
 Book book1 = Book('গোরা', 'রবীন্দ্রনাথ ঠাকুর', 1910);
  Book book2 = Book('তিনকুনি', 'সেলিনা হোসেন', 1981);
  Book book3 = Book('কঙ্কাবতী', 'শীর্ষেন্দু মুখোপাধ্যায়', 1993);
  // Simulate reading pages for each book
  book1.read(50);
  book2.read(120);
  book3.read(75);

  // Print details using getter methods
  print("Book List");
  print("----------------------------------------------");
  List<Book> books = [book1, book2, book3];
  
  for (var book in books) {
    print("Title: ${book.getTitle()}");
    print("Author: ${book.getAuthor()}");
    print("Publication Year: ${book.getPublicationYear()}");
    print("Pages Read: ${book.getPagesRead()}");
    print("Book Age: ${book.getBookAge()} years");
    print(""); // Add a blank line for better readability
  }


  // Print total number of books created 
  print("Total books created: ${Book.totalBooks}");
   
}
