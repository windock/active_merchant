module ActiveMerchant #:nodoc:
  module Billing #:nodoc:
    class BraintreeGateway
      def self.new(options={})
        if options.has_key?(:login)
          Braintree1Gateway.new(options)
        else
          Braintree2Gateway.new(options)
        end
      end
    end
  end
end
