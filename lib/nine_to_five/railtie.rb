module NineToFive
  class Railtie < ::Rails::Railtie
    initializer "nine_to_five.middleware" do |app|
      app.middleware.use Middleware
    end
  end
end
