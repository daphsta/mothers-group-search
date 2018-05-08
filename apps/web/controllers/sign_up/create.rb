module Web::Controllers::SignUp
  class Create
    include Web::Action

    params do
      configure do
        config.messages_file = "apps/web/config/locales/errors.en.yml"
      end

      required(:user).schema do
        required(:email).filled(:str?, format?: /@/)
        required(:name).filled(:str?)
        required(:suburb).filled(:str?, )
        required(:postcode).filled(:int?)
        required(:state).filled(:str?)
        required(:password).filled(:str?, size?:(8..32)).confirmation
      end
    end

    def call(params)
      unless params.valid?
        flash[:alert] = 'Something went wrong'
        self.status = 422
        return
      end

      user = CreateUser.call(params[:user])

      if user.success?
        redirect_to '/'
      else
        self.status = 422
      end
    end
  end
end
