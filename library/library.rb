class Library

  attr_accessor :books

def initialize(input_books)
  @books = input_books
end

def book_info(book_title)
  for book in @books
    if book[:title] == book_title
      return book
    end
  end
  return "#{book_title} is not available at this library."
end

def get_rental_details(book_title)
  for book in @books
    if book[:title] == book_title
      return book[:rental_details]
    end
  end
  return "#{book_title} not found."
end

  def add_new_book(new_title)
    new_book = {}
    new_book[:title] = new_title
    new_book[:rental_details] = {
      student_name: "",
      date: ""
    }
    @books << new_book
  end

  def change_rental_details(title, student, date)
    for book in @books
      if book[:title] == title
        book[:rental_details] = {
          student_name: student,
          date: date
        }
      end
    end
  end


end
