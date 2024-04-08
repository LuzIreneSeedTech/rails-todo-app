class UserController < ApplicationController
    before_action :authenticate_user!

    def index
      @user_categories = User.all
    end
end
