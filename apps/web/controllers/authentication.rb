module Web
  module Authentication
    def self.included(action)
      action.class_eval do
        expose :current_user
      end
    end

    private

    def current_user
      @current_user ||= request.env['warden'].user
    end
  end
end
