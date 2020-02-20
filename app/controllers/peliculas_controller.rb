class PeliculasController < ApplicationController
  before_action :set_pelicula, only: [:show, :edit, :update, :destroy]

  # GET /peliculas
  # GET /peliculas.json
  def index
    @pelicula = Pelicula.all
    render json: @pelicula, status: :ok 
  end

  # GET /peliculas/1
  # GET /peliculas/1.json
  def show
    @pelicula = Pelicula.find_by(id: params[:id])
    if @pelicula
        render json: @pelicula, status: :ok
    else
        render json: {error: 'Not Found'}, status: :not_found
    end
  end

  # GET /peliculas/new
  def new
    @pelicula = Pelicula.new
  end

  # GET /peliculas/1/edit
  def edit
  end

  # POST /peliculas
  # POST /peliculas.json
  def create
    @pelicula = Pelicula.new(pelicula_params)
    respond_to do |format|
      if @pelicula.save
        format.html { redirect_to @pelicula, notice: 'Pelicula was successfully created.' }
        format.json { render :show, status: :created, location: @pelicula }
      else
        format.html { render :new }
        format.json { render json: @pelicula.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /peliculas/1
  # PATCH/PUT /peliculas/1.json
  def update
    @pelicula = Pelicula.find(params[:id])
    @pelicula.update(update_params)
    render json: @pelicula, status: :ok
  end

  # DELETE /peliculas/1
  # DELETE /peliculas/1.json
  def destroy
    @pelicula = Pelicula.find(params[:id])
    @pelicula.destroy
    render json: {message: 'Eliminated'}, status: :ok

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pelicula
      @pelicula = Pelicula.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pelicula_params
      params.require(:pelicula).permit(:nombre, :descripcion, :url_imagen, :dia_funcion, :funcion_id)
    end
end
