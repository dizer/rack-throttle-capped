require 'rack/throttle'
require 'rack/throttle/capped/version'

module Rack
  module Throttle
    module Capped
      autoload :CacheStore, 'rack/throttle/capped/cache_store'
      autoload :Limiter,    'rack/throttle/capped/limiter'
    end
  end
end

Rack::Throttle::Limiter.prepend(Rack::Throttle::Capped::Limiter)
