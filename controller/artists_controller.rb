
#Index (index all artists) - GET "/artists"
get '/artists' do
  @artists = Artist.all
  # binding.pry
  erb :"artists/index"
end

#Show (show particular artist) - GET "/artist/:id"
get '/artist/:id' do

end

#New (render form to create new artists) - GET "/artists/new"
get '/artists/new' do

end

#Edit (render form to edit existing artist) - GET "/artists/:id/edit"
get '/artists/:id/edit' do

end

#Create (submit form to create new artist) - POST "/artists"
post '/artists' do

end

#Update (submit form to update existing artist) - PUT "/artists/:id"
put '/artists/:id' do

end

#Destroy (delete an existing artist) - DELETE "/artists/:id"
delete '/artists/:id' do

end
