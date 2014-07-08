module Api::V1::UserController
    def self.registered(app)
        # /api/v1/hello
        # http://localhost:4000/api/v1/hello?name=superCQ&id=20
        # 显示结果: Hello superCQ, id=20
        app.get '/hello' do
            "Hello #{params[:name]}, id=#{params[:id]}"
        end
    end
end