class BookshelvesController < ApplicationController
  before_action :set_bookshelf, only: %i[show edit update destroy]

  def index
    @bookshelves = Bookshelf.all
  end

  def show; end

  def new
    @bookshelf = Bookshelf.new
  end

  def edit; end

  def create
    @bookshelf = Bookshelf.new(bookshelf_params)

    if @bookshelf.save
      redirect_to @bookshelf, notice: 'Bookshelf was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @bookshelf.update(bookshelf_params)
      redirect_to @bookshelf, notice: 'Bookshelf was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @bookshelf.destroy
    redirect_to bookshelves_path, notice: 'Bookshelf was successfully destroyed.'
  end

  private

  def set_bookshelf
    @bookshelf = Bookshelf.find(params[:id])
  end

  def bookshelf_params
    params.require(:bookshelf).permit(:name)
  end
end
