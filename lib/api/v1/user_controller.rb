module Api::V1::UserController
    def self.registered(app)

        app.helpers Helpers

        app.post '/user/create' do
            Rails.logger.info(params[:user])
            @user = User.new(params[:user])
            if @user.save
                Rails.logger.info("logger save OK")
            else
                Rails.logger.info("logger save ERROR")
            end
            render_json(:id => @user[:id])
        end

        # /api/v1/hello
        # http://localhost:4000/api/v1/hello?name=superCQ&id=20
        # 显示结果: Hello superCQ, id=20
        app.get '/hello' do
            "Hello #{params[:name]}, id=#{params[:id]}"
        end
    end

    module Helpers
        def render_json(json={})
            JSON.generate({:status => 0, :msg => "success."}.merge(json))
        end
    end
end