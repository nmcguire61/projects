class PhotosController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource

  def index
   @photos = Photo.all
  end

  def show
  end

  def new
    @photo = Photo.new
  end

  def edit
  end

  def create
    @photo = Photo.new(photo_params)

    respond_to do |format|
      if @photo.save
        format.html { redirect_to @photo, notice: 'Photo was successfully created.' }
        format.json { render :show, status: :created, location: @photo }
      else
        format.html { render :new }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @photo.update(photo_params)
        format.html { redirect_to @photo, notice: 'Photo was successfully updated.' }
        format.json { render :show, status: :ok, location: @photo }
      else
        format.html { render :edit }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    album = set_photo.album
    set_photo.destroy
    respond_to do |format|
      format.html { redirect_to album, notice: 'Photo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
  def set_photo
    @photo = Photo.find(params[:id])
  end

  def photo_params
    params.require(:photo).permit(:name, :photo_image, :album_id)
  end

end