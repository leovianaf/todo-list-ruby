class ItemsController < ApplicationController
  before_action :set_list
  before_action :set_item, only: %i[edit update destroy toggle_done]

  def new
    @new_item = @list.items.build
  end

  # POST /lists/:list_id/items
  def create
    @new_item = @list.items.build(item_params)
  
    if @new_item.save
      redirect_to @list, notice: "Item criado com sucesso."
    else
      render :new
    end
  end

  # GET /lists/:list_id/items/:id/edit
  def edit
  end

  # PATCH /lists/:list_id/items/:id
  def update
    if @item.update(item_params)
      redirect_to @list, notice: "Item atualizado com sucesso."
    else
      render :edit, alert: "Erro ao atualizar item."
    end
  end

  # PATCH /lists/:list_id/items/:id/toggle_done
  def toggle_done
    @item.update(is_done: !@item.is_done)
    redirect_to @list, notice: "Status do item atualizado."
  end
  

  # DELETE /lists/:list_id/items/:id
  def destroy
    @item.destroy
    redirect_to @list, notice: "Item excluído com sucesso."
  end

  private
    def set_list
      @list = List.find(params[:list_id])
    end

    def set_item
      @item = @list.items.find(params[:id])
    end

    def item_params
      params.require(:item).permit(:description, :is_done, tag_ids: [])
    end
end
