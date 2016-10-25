class OrderMailer < ApplicationMailer
  default from: 'notifications@example.com'
  default cc: 'admin@example.com'

  def place_order_email(order)
    @order = order
    mail(to: @order.address, subject: 'Thank you for placing order with us')
  end
end
