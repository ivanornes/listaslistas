class ImagensController < ApplicationController
  # GET /imagens
  # GET /imagens.json
  def index
    @imagens = Imagen.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @imagens }
    end
  end

  # GET /imagens/1
  # GET /imagens/1.json
  def show
    @imagen = Imagen.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @imagen }
    end
  end

  # GET /imagens/new
  # GET /imagens/new.json
  def new
    @imagen = Imagen.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @imagen }
    end
  end

  # GET /imagens/1/edit
  def edit
    @imagen = Imagen.find(params[:id])
  end

  # POST /imagens
  # POST /imagens.json
  def create
    @imagen = Imagen.new(params[:imagen])

    respond_to do |format|
      if @imagen.save
        format.html { redirect_to @imagen, notice: 'Imagen was successfully created.' }
        format.json { render json: @imagen, status: :created, location: @imagen }
      else
        format.html { render action: "new" }
        format.json { render json: @imagen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /imagens/1
  # PUT /imagens/1.json
  def update
    @imagen = Imagen.find(params[:id])

    respond_to do |format|
      if @imagen.update_attributes(params[:imagen])
        format.html { redirect_to @imagen, notice: 'Imagen was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @imagen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /imagens/1
  # DELETE /imagens/1.json
  def destroy
    @imagen = Imagen.find(params[:id])
    @imagen.destroy

    respond_to do |format|
      format.html { redirect_to imagens_url }
      format.json { head :ok }
    end
  end
end
