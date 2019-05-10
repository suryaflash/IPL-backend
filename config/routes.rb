Rails.application.routes.draw do

	resources :teams,:players,:managers

	post 'admin/signin' , to:'admin#signin'

	post 'user/signup' , to:'user#create' 

	post 'user/signin' , to:'user#signin'  

	


	            #           GET    /teams(.:format)               teams#index
                #           POST   /teams(.:format)               teams#create
                #           GET    /teams/new(.:format)           teams#new
                #           GET    /teams/:id/edit(.:format)      teams#edit
                #      	    GET    /teams/:id(.:format)           teams#show
                #           PATCH  /teams/:id(.:format)           teams#update
                #           PUT    /teams/:id(.:format)           teams#update
                #           DELETE /teams/:id(.:format)           teams#destroy


                #   		GET    /players(.:format)   			players#index
                #       	POST   /players(.:format)               players#create
                # 			GET    /players/new(.:format)           players#new
               	# 			GET    /players/:id/edit(.:format)      players#edit
                #   		GET    /players/:id(.:format)           players#show
                #      		PATCH  /players/:id(.:format)           players#update
                #       	PUT    /players/:id(.:format)           players#update
                #       	DELETE /players/:id(.:format)           players#destroy



end
