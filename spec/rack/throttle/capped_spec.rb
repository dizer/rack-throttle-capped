require 'spec_helper'

describe Rack::Throttle::Capped do
  it 'has a version number' do
    expect(Rack::Throttle::Capped::VERSION).not_to be nil
  end

  describe Rack::Throttle::Limiter do
    it do
      expect(Rack::Throttle::Limiter).to be_a(Rack::Throttle::Capped::Limiter)
    end
  end

  describe Rack::Throttle::Capped::CacheStore do
    it do
      expect(Rack::Throttle::Capped::CacheStore).to be
    end
  end
end
