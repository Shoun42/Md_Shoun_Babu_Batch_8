import 'book.dart';
void main (){
  Book book1 = Book('Jibon kahine', 'Sagor Babu',  1980);
  Book book2 = Book('The Object-Oriented Thought Process', 'Matt Weisfeld',  2019);
  Book book3 = Book('CSS', 'Prince Ahmed',  2004);
  book1.read(99);
  book2.read(347);
  book3.read(109);

  book1.getTitle();
  book1.getAuthor();
  book1.getPublicationYear();
  book1.getPagesRead();
  book1.getBookAge();
  print('');
  book2.getTitle();
  book2.getAuthor();
  book2.getPublicationYear();
  book2.getPagesRead();
  book2.getBookAge();
  print('');
  book3.getTitle();
  book3.getAuthor();
  book3.getPublicationYear();
  book3.getPagesRead();
  book3.getBookAge();
  print('');
  print('Total Number of Books is : ${Book.totalBooks}');
}