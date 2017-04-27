class PhotosController < ApplicationController
  def create_row
    p = Photo.new
    p.caption = params[:the_caption]
    p.source = params[:the_source]
    p.save
    redirect_to("/photos")
  end
  def update_row
    p = Photo.find(params[:id])
    p.caption = params[:the_caption]
    p.source = params[:the_source]
    p.save
    redirect_to("/photos/#{p.id}")

  end

  def edit_form
    @photo=Photo.find(params[:id])
    render("photos/edit_form.html.erb")
  end

  def destroy_row
    photo = Photo.find(params[:id])
    photo.destroy
    redirect_to("/photos")
  end


  def index
    @list_of_photos = Photo.all
    render("photos/index.html.erb")
  end
  def show
    @photo = Photo.find(params[:id])
    render("photos/show.html.erb")
  end
  def new_form
    render("photos/new_form.html.erb")
  end



end
