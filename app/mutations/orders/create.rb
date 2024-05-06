class CreateOrder < Mutations::Command
  required do 
    
      product_id: integer
    
      quanity: integer
    
      customer_name: string
    
      customer_email: string
    
  end

  def execute 
    product = Product.find(inputs[:product_id])
    raise ActiveRecord::RecordNotFound unless product 

    order = Order.create!(
      product: product,
      quanity: inputs[:quanity],
      customer_name: inputs[:customer_name],
      customer_email: inputs[:customer_email]
    )

    # OrderMailer.order_confirmation(order).deliver_now\
    order
  end
end