class ApplicationController < ActionController::API
    # rescue_from Exception, :with => :render_error_response
    # # before_action :check_authentication
    # # skip_before_action :verify_authenticity_token

    # def render_error_response(error)
    #     render json: { failed: true, message: error }
    # end

    # def current_user
    #     begin
    #         method, token = request.headers[:Authorization].split(' ')
    #         byebug
    #         if method === 'Bearer'
    #             payload, header = JWT.decode(token, 'asdljasldkfjs')
    #             User.find(payload["id"])
    #         end
    #     rescue
    #         raise Exception.new('You must be logged in to make this request')
    #     end
    # end

    # def current_user
    #     byebug
    #     begin
    #         method, token = request.headers[:Authorization].split(' ')
    #         byebug
    #         if method === 'Bearer'
    #             payload, header = JWT.decode(token, 'Fuck You George')
    #             User.find(payload["id"])
    #         end
    #     rescue
    #         raise Exception.new('You must be logged in to make this request')
    #     end
    # end

    #  def current_user
    #     Passenger.find(session[:user_id])
    # end
    rescue_from Exception, :with => :render_error_response

    def render_error_response(error)
        render json: { failed: true, message: error }
    end

    def current_user
        begin
            method, token = request.headers[:Authorization].split(' ')
            if method === 'Bearer'
                payload, header = JWT.decode(token, 'Fuck You George')
                User.find_by(id: payload["id"])
            end
        rescue
            raise Exception.new('You must be logged in to make this request')
        end
    end

end

