class ItemTagsController < ApplicationController
  before_action :set_item_tag, only: %i[ show edit update destroy ]

  # GET /item_tags or /item_tags.json
  def index
    @item_tags = ItemTag.all
  end

  # GET /item_tags/1 or /item_tags/1.json
  def show
  end

  # GET /item_tags/new
  def new
    @item_tag = ItemTag.new
  end

  # GET /item_tags/1/edit
  def edit
  end

  # POST /item_tags or /item_tags.json
  def create
    @item_tag = ItemTag.new(item_tag_params)

    respond_to do |format|
      if @item_tag.save
        format.html { redirect_to @item_tag, notice: "Item tag was successfully created." }
        format.json { render :show, status: :created, location: @item_tag }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @item_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /item_tags/1 or /item_tags/1.json
  def update
    respond_to do |format|
      if @item_tag.update(item_tag_params)
        format.html { redirect_to @item_tag, notice: "Item tag was successfully updated." }
        format.json { render :show, status: :ok, location: @item_tag }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @item_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_tags/1 or /item_tags/1.json
  def destroy
    @item_tag.destroy!

    respond_to do |format|
      format.html { redirect_to item_tags_path, status: :see_other, notice: "Item tag was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item_tag
      @item_tag = ItemTag.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def item_tag_params
      params.expect(item_tag: [ :item_id, :tag_id ])
    end
end
