module Rack
  module Throttle
    module Capped
      module Limiter
        def call(env)
          request = Rack::Request.new(env)
          if allowed?(request)
            app.call(env)
          else
            if !options[:action] || options[:action] == :rate_limit
              rate_limit_exceeded(request)
            else
              instance_exec(env, request, &options[:action])
            end
          end
        end
      end
    end
  end
end


