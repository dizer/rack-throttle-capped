module Rack
  module Throttle
    module Capped
      class CacheStore
        attr_reader :cache, :cap

        def initialize(cache: nil, cap: 3)
          @cache = if cache
                     cache
                   elsif defined?(Concurrent::Hash)
                     Concurrent::Hash.new
                   else
                     Hash.new
                   end
          @cap   = cap
        end

        def []= (k, v)
          @cache.slice!(@cache.keys.sort.reverse[0..cap-1])
          @cache[k] = v
        end

        def [](k)
          cache[k]
        end
      end
    end
  end
end


