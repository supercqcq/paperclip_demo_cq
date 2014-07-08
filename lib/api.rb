require "sinatra/base"

module Api
    module V1
        class Server < Sinatra::Base
            register UserController
        end
    end
end