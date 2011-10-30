class DiscotecasController < ApplicationController
  # GET /discotecas
  # GET /discotecas.json
  def index
    @discotecas = Discoteca.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @discotecas }
    end
  end

  # GET /discotecas/1
  # GET /discotecas/1.json
  def show
    @discoteca = Discoteca.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @discoteca }
    end
  end

  # GET /discotecas/new
  # GET /discotecas/new.json
  def new
    @discoteca = Discoteca.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @discoteca }
    end
  end

  # GET /discotecas/1/edit
  def edit
    @discoteca = Discoteca.find(params[:id])
  end

  # POST /discotecas
  # POST /discotecas.json
  def create
    @discoteca = Discoteca.new(params[:discoteca])

    respond_to do |format|
      if @discoteca.save
        format.html { redirect_to @discoteca, notice: 'Discoteca was successfully created.' }
        format.json { render json: @discoteca, status: :created, location: @discoteca }
      else
        format.html { render action: "new" }
        format.json { render json: @discoteca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /discotecas/1
  # PUT /discotecas/1.json
  def update
    @discoteca = Discoteca.find(params[:id])

    respond_to do |format|
      if @discoteca.update_attributes(params[:discoteca])
        format.html { redirect_to @discoteca, notice: 'Discoteca was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @discoteca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /discotecas/1
  # DELETE /discotecas/1.json
  def destroy
    @discoteca = Discoteca.find(params[:id])
    @discoteca.destroy

    respond_to do |format|
      format.html { redirect_to discotecas_url }
      format.json { head :ok }
    end
  end
end
