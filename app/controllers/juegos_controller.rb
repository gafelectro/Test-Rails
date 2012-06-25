class JuegosController < ApplicationController
  # GET /juegos
  # GET /juegos.json
  def index
    @users = User.all
    @juegos = Juego.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @juegos }
    end
  end

  # GET /juegos/1
  # GET /juegos/1.json
  def show
    @juego = Juego.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @juego }
    end
  end

  # GET /juegos/new
  # GET /juegos/new.json
  def new
    @juego = Juego.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @juego }
    end
  end

  # GET /juegos/1/edit
  def edit
    @juego = Juego.find(params[:id])
  end

  # POST /juegos
  # POST /juegos.json
  def create
    @juego = Juego.new(params[:juego])

    respond_to do |format|
      if @juego.save
        format.html { redirect_to @juego, notice: 'Juego was successfully created.' }
        format.json { render json: @juego, status: :created, location: @juego }
      else
        format.html { render action: "new" }
        format.json { render json: @juego.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /juegos/1
  # PUT /juegos/1.json
  def update
    @juego = Juego.find(params[:id])

    respond_to do |format|
      if @juego.update_attributes(params[:juego])
        format.html { redirect_to @juego, notice: 'Juego was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @juego.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /juegos/1
  # DELETE /juegos/1.json
  def destroy
    @juego = Juego.find(params[:id])
    @juego.destroy

    respond_to do |format|
      format.html { redirect_to juegos_url }
      format.json { head :no_content }
    end
  end
end
