Spree::Core::Engine.routes.draw do
  post "/paymaya/pay", to: "pay_maya#pay"
  get "/paymaya/failure", to: "pay_maya#failure"
  get "/paymaya/success", to: "pay_maya#success"
  get "/paymaya/cancel", to: "pay_maya#cancel"
end
