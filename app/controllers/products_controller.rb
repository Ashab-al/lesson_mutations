class ProductsController < ApplicationController
  def create
    result = CreateOrderMutation.run(params)

    if result.success?
      render json: result.result, status: :created
    else
      render json: {errors: result.errors}, status: :unprocessable_entity
    end
  end
end
