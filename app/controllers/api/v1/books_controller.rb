class Api::V1::BooksController < ApplicationController
  before_action :authenticate_user!

  # GET /api/v1/books
  def index
    books = Book.all
    render json: books
  end

  # GET /api/v1/books/:id
  def show
    book = Book.find(params[:id])
    render json: book
  rescue Mongoid::Errors::DocumentNotFound
    render json: { error: "Book not found" }, status: :not_found
  end

  # POST /api/v1/books
  def create
    book = Book.new(book_params)
    if book.save
      render json: book, status: :created
    else
      render json: book.errors, status: :unprocessable_entity
    end
  end

  # PUT /api/v1/books/:id
  def update
    book = Book.find(params[:id])
    if book.update(book_params)
      render json: book
    else
      render json: book.errors, status: :unprocessable_entity
    end
  rescue Mongoid::Errors::DocumentNotFound
    render json: { error: "Book not found" }, status: :not_found
  end

  # DELETE /api/v1/books/:id
  def destroy
    book = Book.find(params[:id])
    book.destroy
    head :no_content
  rescue Mongoid::Errors::DocumentNotFound
    render json: { error: "Book not found" }, status: :not_found
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :published_on)
  end
end
