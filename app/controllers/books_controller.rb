class BooksController < ApplicationController

 def index
   @books = Book.all
    respond_to do |format|
      format.html
      format.text

    format.csv do |book|
    book.generate_csv {render text: @books.to_csv}



  end
  end

 end

end
