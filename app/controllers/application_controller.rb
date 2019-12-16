class ApplicationController < ActionController::Base
    def home
        render html: "Welcome!"
    end
end
