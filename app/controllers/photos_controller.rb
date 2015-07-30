class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @photo = Photo.find(params["id"])

    render("show.html.erb")
  end

  def new_photo_form
    render("new_photo.html.erb")
  end

  def create_photo
    p = Photo.new
    p.caption = params["photo_caption"]
    p.source = params["photo_source"]
    p.save

    redirect_to("http://localhost:3000/photos")
  end

  def update_photo_form
    @photo = Photo.find(params["id"])
    render("update_photo.html.erb")
  end

  def update_photo
    p = Photo.find(params["id"])
    p.caption = params["update_caption"]
    p.source = params["update_source"]
    p.save

    redirect_to("http://localhost:3000/photos/#{p.id}/show")
  end

  def destroy
    p = Photo.find(params["id"])
    p.destroy

    redirect_to("http://localhost:3000/photos/")
  end

end
