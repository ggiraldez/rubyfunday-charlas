class CharlasController < ApplicationController
  # GET /charlas
  # GET /charlas.json
  def index
    @charlas = Charla.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @charlas }
    end
  end

  # GET /charlas/1
  # GET /charlas/1.json
  def show
    @charla = Charla.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @charla }
    end
  end

  # GET /charlas/new
  # GET /charlas/new.json
  def new
    @charla = Charla.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @charla }
    end
  end

  # GET /charlas/1/edit
  def edit
    @charla = Charla.find(params[:id])
  end

  # POST /charlas
  # POST /charlas.json
  def create
    @charla = Charla.new(params[:charla])

    respond_to do |format|
      if @charla.save
        format.html { redirect_to @charla, notice: 'Charla was successfully created.' }
        format.json { render json: @charla, status: :created, location: @charla }
      else
        format.html { render action: "new" }
        format.json { render json: @charla.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /charlas/1
  # PUT /charlas/1.json
  def update
    @charla = Charla.find(params[:id])

    respond_to do |format|
      if @charla.update_attributes(params[:charla])
        format.html { redirect_to @charla, notice: 'Charla was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @charla.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /charlas/1
  # DELETE /charlas/1.json
  def destroy
    @charla = Charla.find(params[:id])
    @charla.destroy

    respond_to do |format|
      format.html { redirect_to charlas_url }
      format.json { head :ok }
    end
  end
end
