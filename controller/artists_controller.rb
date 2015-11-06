
#Index (index all artists) - GET "/artists"
get '/artists' do
  @artists = Artist.all
  erb :"artists/index"
end

#New (render form to create new artists) - GET "/artists/new"
get '/artists/new' do
  erb :"artists/new"
end

#Create (submit form to create new artist) - POST "/artists"
post '/artists' do
  Artist.create(name: params[:name], photo_url: params[:photo_url], nationality: params[:nationality])
  redirect "/artists"
end

#Show (show particular artist) - GET "/artist/:id"
get '/artists/:id' do
  @artist = Artist.find(params[:id])
  erb :"artists/show"
end

#Edit (render form to edit existing artist) - GET "/artists/:id/edit"
get '/artists/:id/edit' do
  @artist = Artist.find(params[:id])
  erb :"artists/edit"
end

#Update (submit form to update existing artist) - PUT "/artists/:id"
put '/artists/:id' do
  @artist = Artist.find(params[:id])
  @artist.update(params[:artist])
  redirect "/artists/#{@artist.id}"
end

#Destroy (delete an existing artist) - DELETE "/artists/:id"
delete '/artists/:id' do
  artist = Artist.find(params[:id])
  artist.destroy
  redirect "/artists"
end
