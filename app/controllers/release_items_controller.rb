class ReleaseItemsController < ApplicationController
  # GET /release_items
  # GET /release_items.json
  def index
    @release_items = ReleaseItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @release_items }
    end
  end

  # GET /release_items/1
  # GET /release_items/1.json
  def show
    @release_item = ReleaseItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @release_item }
    end
  end

  # GET /release_items/new
  # GET /release_items/new.json
  def new
    @release_item = ReleaseItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @release_item }
    end
  end

  # GET /release_items/1/edit
  def edit
    @release_item = ReleaseItem.find(params[:id])
  end

  # POST /release_items
  # POST /release_items.json
  def create
    @release_item = ReleaseItem.new(params[:release_item])

    respond_to do |format|
      if @release_item.save
        format.html { redirect_to @release_item, notice: 'Release item was successfully created.' }
        format.json { render json: @release_item, status: :created, location: @release_item }
      else
        format.html { render action: "new" }
        format.json { render json: @release_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /release_items/1
  # PUT /release_items/1.json
  def update
    @release_item = ReleaseItem.find(params[:id])

    respond_to do |format|
      if @release_item.update_attributes(params[:release_item])
        format.html { redirect_to @release_item, notice: 'Release item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @release_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /release_items/1
  # DELETE /release_items/1.json
  def destroy
    @release_item = ReleaseItem.find(params[:id])
    @release_item.destroy

    respond_to do |format|
      format.html { redirect_to release_items_url }
      format.json { head :no_content }
    end
  end
end
