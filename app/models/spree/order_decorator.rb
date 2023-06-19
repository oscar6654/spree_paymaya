# module Spree
#   Order.class_eval do
#     def to_paymaya
#       OrderPaymaya.new(self).checkout
#     end
#   end
# end

module Spree::OrderDecorator

  def self.prepended(base)
  end

  def to_paymaya
    Spree::OrderPaymaya.new(self).checkout
  end
end

::Spree::Order.prepend(Spree::OrderDecorator)