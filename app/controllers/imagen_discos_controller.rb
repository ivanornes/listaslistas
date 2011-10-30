class ImagenDiscosController < ApplicationController
  # GET /imagen_discos
  # GET /imagen_discos.json
  def index
    @imagen_discos = ImagenDisco.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @imagen_discos }
    end
  end

  # GET /imagen_discos/1
  # GET /imagen_discos/1.json
  def show
    @imagen_disco = ImagenDisco.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @imagen_disco }
    end
  end

  # GET /imagen_discos/new
  # GET /imagen_discos/new.json
  def new
    @imagen_disco = ImagenDisco.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @imagen_disco }
    end
  end

  # GET /imagen_discos/1/edit
  def edit
    @imagen_disco = ImagenDisco.find(params[:id])
  end

  # POST /imagen_discos
  # POST /imagen_discos.json
  def create
    @imagen_disco = ImagenDisco.new(params[:imagen_disco])

    respond_to do |format|
      if @imagen_disco.save
        format.html { redirect_to @imagen_disco, notice: 'Imagen disco was successfully created.' }
        format.json { render json: @imagen_disco, status: :created, location: @imagen_disco }
      else
        format.html { render action: "new" }
        format.json { render json: @imagen_disco.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /imagen_discos/1
  # PUT /imagen_discos/1.json
  def update
    @imagen_disco = ImagenDisco.find(params[:id])

    respond_to do |format|
      if @imagen_disco.update_attributes(params[:imagen_disco])
        format.html { redirect_to @imagen_disco, notice: 'Imagen disco was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @imagen_disco.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /imagen_discos/1
  # DELETE /imagen_discos/1.json
  def destroy
    @imagen_disco = ImagenDisco.find(params[:id])
    @imagen_disco.destroy

    respond_to do |format|
      format.html { redirect_to imagen_discos_url }
      format.json { head :ok }
    end
  end
end
