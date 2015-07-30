Rails.application.routes.draw do

  get("/", { :controller => "photos", :action => "index" })

 # Routes to CREATE photos
  get("/photos/new",           { :controller => "photos", :action => "new_photo_form" })
  get("/photos/create_photo",       { :controller => "photos", :action => "create_photo" })

  # Routes to READ photos
  get("/photos",           { :controller => "photos", :action => "index" })
  get("/photos/:id/show",       { :controller => "photos", :action => "show" })

   # Routes to UPDATE photos
  get("/photos/:id/edit",           { :controller => "photos", :action => "update_photo_form" })
  get("/photos/:id/update_photo",       { :controller => "photos", :action => "update_photo" })

   # Routes to DELETE photos
  get("/photos/delete_photo/:id",           { :controller => "photos", :action => "destroy" })


end
