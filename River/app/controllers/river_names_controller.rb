class RiverNamesController < ApplicationController
  # GET /river_names
  # GET /river_names.json
  def index
    @river_names = RiverName.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @river_names }
    end
  end

  # GET /river_names/1
  # GET /river_names/1.json
  def show
    @river_name = RiverName.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @river_name }
    end
  end

  # GET /river_names/new
  # GET /river_names/new.json
  def new
    @river_name = RiverName.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @river_name }
    end
  end

  # GET /river_names/1/edit
  def edit
    @river_name = RiverName.find(params[:id])
  end

  # POST /river_names
  # POST /river_names.json
  def create
    @river_name = RiverName.new(params[:river_name])

    respond_to do |format|
      if @river_name.save
        format.html { redirect_to @river_name, notice: 'River name was successfully created.' }
        format.json { render json: @river_name, status: :created, location: @river_name }
      else
        format.html { render action: "new" }
        format.json { render json: @river_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /river_names/1
  # PUT /river_names/1.json
  def update
    @river_name = RiverName.find(params[:id])

    respond_to do |format|
      if @river_name.update_attributes(params[:river_name])
        format.html { redirect_to @river_name, notice: 'River name was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @river_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /river_names/1
  # DELETE /river_names/1.json
  def destroy
    @river_name = RiverName.find(params[:id])
    @river_name.destroy

    respond_to do |format|
      format.html { redirect_to river_names_url }
      format.json { head :no_content }
    end
  end
end
