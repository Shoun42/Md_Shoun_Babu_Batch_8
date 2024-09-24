class Book {
  String _title;
  String _author;
  int _publicationYear;
  int _pagesRead = 0;
  static int totalBooks = 0;

  Book(this._title, this._author, this._publicationYear){
    totalBooks++;
  }
  void read(int pages) {
    _pagesRead += pages;
  }
  int getPagesRead(){
    print('Read Pages : $_pagesRead');
    return _pagesRead;
  }
  String getTitle(){
    print('Book Title : $_title');
    return _title;
  }
  String getAuthor(){
    print('Book Author : $_author');
    return _author;
  }
  int getPublicationYear(){
    print('Publication Year : $_publicationYear');
    return _publicationYear;
  }
  int getBookAge(){
    int currentYear = DateTime.now().year;
    int bookAge = currentYear - _publicationYear;
    print('Age of the Book : $bookAge Years');
    return bookAge;
  }
}