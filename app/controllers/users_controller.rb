class UsersController < ApplicationController
    def index 
        
        @saisi = User.new 
        p = Crypto.all

        if  p == nil || p== []
            @crypt = StartScrap.new.perform
        else  
            p.destroy_all
            @crypt = StartScrap.new.perform
        end
    end

    def show 
        puts "####################################################"
        puts "les PARAMS--> #{params[:user][:crypto_id]}"
        @result = Crypto.find_by(id: params[:user][:crypto_id])
        puts "ceci est la saisie #{@result} !!!!" 
    end
    
end
