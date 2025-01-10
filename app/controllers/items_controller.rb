class ItemsController < ApplicationController
  before_action :set_item, only: %i[ show edit update destroy ]

  # GET /items or /items.json
  def index
    @items = Item.all
  end

  # GET /items/1 or /items/1.json
  def show
  end

  # GET /items/new
  def new
    @list = List.find(params[:list_id])
    @new_item = @list.items.build
  end

  # GET /items/1/edit
  def edit
  end

  # POST /items or /items.json
  def create
    @list = List.find(params[:list_id])
    @item = @list.items.build(item_params)

    if @item.save
      redirect_to @list, notice: "Item criado com sucesso."
    else
      render 'lists/show', alert: "Erro ao criar item."
    end
  end

  # PATCH/PUT /items/1 or /items/1.json
  def update
    @item = Item.find(params[:id])
    @item.update(is_done: !@item.is_done)
    redirect_to list_path(@item.list)
  end

  # DELETE /items/1 or /items/1.json
  def destroy
    @item.destroy
    redirect_to @item.list, notice: "Item excluído com sucesso."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def item_params
      params.require(:item).permit(:description, :is_done)
    end
end
