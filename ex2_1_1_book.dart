class Book {

  String title;
  String author;
  double price;

  Book(this.title, this.author, this.price);

 
  void showDetail() {
    print("tiltle: $title");
    print("author: $author");
    print("price: $price บาท");
    print("---------------");
  }
}

void main() {
  Book book1 = Book("Dart", "anawin", 250.0);
  Book book2 = Book("network", "win", 350.0);

  book1.showDetail();
  book2.showDetail();
}