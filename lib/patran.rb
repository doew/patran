require "patran/version"

module Patran
  class Error < StandardError; end
  
  class TrackingNumber
    def initialize(number:, courier:)
      raise Patran::Error.new('Number and Courier is required.') if number.nil? || courier.nil?

      @number = number
      @courier = courier
      @courier_class = Patran.CourierClass @courier
    end

    def official_tracking_uri
      @courier_class.official_tracking_uri @number
    end
  end

  def self.CourierClass(courier)
    case courier
    when 'yamato'
      Patran::Yamato
    else
      raise Patran::Error.new('Not implemented courier.')
    end
  end
end
