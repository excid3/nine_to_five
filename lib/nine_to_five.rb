require "nine_to_five/version"
require "nine_to_five/railtie"

module NineToFive
  mattr_accessor :start_hour
  @@start_hour = 9

  mattr_accessor :end_hour
  @@end_hour = 17

  mattr_accessor :response
  @@response = "Please come back during business hours."

  class Middleware
    def initialize(app)
      @app = app
    end

    def call(env)
      current_time = Time.current
      start_time = current_time.change(hour: NineToFive.start_hour)
      end_time = current_time.change(hour: NineToFive.end_hour)

      if current_time.between? start_time, end_time
        @app.call(env)
      else
        [403, {"Content-Type" => "text/html"}, [NineToFive.response]]
      end
    end
  end
end
