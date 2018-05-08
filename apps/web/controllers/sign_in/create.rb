module Web::Controllers::SignIn
  class Create
    include Web::Action

    params do
      required(:user).schema do
        required(:email).filled(:str?, format?: /@/)
        required(:password).filled(:str?, size?: 8..32)
      end
    end

    def call(params)
      unless params.valid?
        flash[:alert] = 'Something went wrong'
        self.status = 422
        return
      end

      user = request.env['warden'].authenticate

      if user
        redirect_to '/'
      else
        self.status = 422
        flash[:alert] = request.env['warden'].message
      end
    end
  end
end
