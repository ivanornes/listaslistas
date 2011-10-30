class ImagenEventosController < ApplicationController
  # GET /imagen_eventos
  # GET /imagen_eventos.json
  def index
    @imagen_eventos = ImagenEvento.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @imagen_eventos }
    end
  end

  # GET /imagen_eventos/1
  # GET /imagen_eventos/1.json
  def show
    @imagen_evento = ImagenEvento.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @imagen_evento }
    end
  end

  # GET /imagen_eventos/new
  # GET /imagen_eventos/new.json
  def new
    @imagen_evento = ImagenEvento.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @imagen_evento }
    end
  end

  # GET /imagen_eventos/1/edit
  def edit
    @imagen_evento = ImagenEvento.find(params[:id])
  end

  # POST /imagen_eventos
  # POST /imagen_eventos.json
  def create
    @imagen_evento = ImagenEvento.new(params[:imagen_evento])

    respond_to do |format|
      if @imagen_evento.save
        format.html { redirect_to @imagen_evento, notice: 'Imagen evento was successfully created.' }
        format.json { render json: @imagen_evento, status: :created, location: @imagen_evento }
      else
        format.html { render action: "new" }
        format.json { render json: @imagen_evento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /imagen_eventos/1
  # PUT /imagen_eventos/1.json
  def update
    @imagen_evento = ImagenEvento.find(params[:id])

    respond_to do |format|
      if @imagen_evento.update_attributes(params[:imagen_evento])
        format.html { redirect_to @imagen_evento, notice: 'Imagen evento was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @imagen_evento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /imagen_eventos/1
  # DELETE /imagen_eventos/1.json
  def destroy
    @imagen_evento = ImagenEvento.find(params[:id])
    @imagen_evento.destroy

    respond_to do |format|
      format.html { redirect_to imagen_eventos_url }
      format.json { head :ok }
    end
  end
end
