class UsersController < ApplicationController
    def index 
        #comment reset la base de donnée via ruby ?
        #db:reset 
        @crypt = StartScrap.new.perform
    end
    def new 
        @crypt = User.new 
    end
    def create 
        @crypt = Crypto.find_by(name: params[:user][:name])
        puts @crypt
        redirect_to show_path
    end
    def show 
    end
end
