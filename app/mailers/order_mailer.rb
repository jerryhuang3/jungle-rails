class OrderMailer < ApplicationMailer
    default from: 'order-details@tinyjungle.com'

    def order_email(order)
        @order = order
        mail(to: @order.email, subject: "Order Confirmation for Order ##{@order.id} ")
    end
end
