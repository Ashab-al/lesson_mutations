class CreateProduct < Mutations::Command
  required do 
      name: string
      price: float   
      quanity: integer
    
  end

  def execute 
    Product.create!(
      name: inputs[:name],
      price: inputs[:price],
      quanity: inputs[:quanity]
    )
  end
end