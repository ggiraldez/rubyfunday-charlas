class OradorsController < ApplicationController
  # GET /oradors
  # GET /oradors.json
  def index
    @oradors = Orador.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @oradors }
    end
  end

  # GET /oradors/1
  # GET /oradors/1.json
  def show
    @orador = Orador.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @orador }
    end
  end

  # GET /oradors/new
  # GET /oradors/new.json
  def new
    @orador = Orador.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @orador }
    end
  end

  # GET /oradors/1/edit
  def edit
    @orador = Orador.find(params[:id])
  end

  # POST /oradors
  # POST /oradors.json
  def create
    @orador = Orador.new(params[:orador])

    respond_to do |format|
      if @orador.save
        format.html { redirect_to @orador, notice: 'Orador was successfully created.' }
        format.json { render json: @orador, status: :created, location: @orador }
      else
        format.html { render action: "new" }
        format.json { render json: @orador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /oradors/1
  # PUT /oradors/1.json
  def update
    @orador = Orador.find(params[:id])

    respond_to do |format|
      if @orador.update_attributes(params[:orador])
        format.html { redirect_to @orador, notice: 'Orador was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @orador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oradors/1
  # DELETE /oradors/1.json
  def destroy
    @orador = Orador.find(params[:id])
    @orador.destroy

    respond_to do |format|
      format.html { redirect_to oradors_url }
      format.json { head :ok }
    end
  end
end
