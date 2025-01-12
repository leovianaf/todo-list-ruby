class CategoriesController < ApplicationController
  before_action :set_category, only: %i[ show edit update destroy ]

  # GET /categories or /categories.json
  def index
    @categories = Category.all
  end

  # GET /categories/1 or /categories/1.json
  def show
  end

  # GET /categories/new
  def new
    @category = Category.new
  end

  # GET /categories/1/edit
  def edit
  end

  # POST /categories or /categories.json
  def create
    @category = Category.new(category_params)
  
    respond_to do |format|
      if @category.save
        format.html { redirect_to lists_path, notice: "Categoria criada com sucesso." }
        format.json { render :show, status: :created, location: @list }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categories/1 or /categories/1.json
  def update
    if @category.update(category_params)
      redirect_to lists_path, notice: "Categoria atualizada com sucesso!"
    else
      render :edit, alert: "Erro ao atualizar a categoria."
    end
  end

  # DELETE /categories/1 or /categories/1.json
  def destroy
    @category.destroy
    redirect_to lists_path, notice: "Categoria excluída com sucesso."
  end

  private
    def set_category
      @category = Category.find(params[:id])
    end

    def category_params
      params.require(:category).permit(:name)
    end
end
