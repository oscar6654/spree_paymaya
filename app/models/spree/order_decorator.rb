# module Spree
#   Order.class_eval do
#     def to_paymaya
#       OrderPaymaya.new(self).checkout
#     end
#   end
# end

module Spree::OrderDecorator
  def to_paymaya
    OrderPaymaya.new(self).checkout
  end
end

Order.prepend(Spree::OrderDecorator)