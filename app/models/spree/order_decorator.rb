module Spree
  Order.class_eval do
    def to_paymaya
      OrderPaymaya.new(self).checkout
    end
  end
end