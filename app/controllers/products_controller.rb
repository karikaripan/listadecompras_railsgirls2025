class ProductsController < ApplicationController
    def index #def é função
        @products = Product.all 
    end
    def show
        @product = Product.find(params[:id])
    end
    def new
        @product = Product.new
    end
    def create
        @product = Product.new(name: params[:product][:name], price: params[:product][:price], quantity: params[:product][:quantity])
        @product.save
        redirect_to @product
    end
    def edit 
        @product = Product.find(params[:id])
    end
    def update
        @product = Product.find(params[:id])
        @product.update(name: params[:product][:name], price: params[:product][:price], quantity: params[:product][:quantity])
        redirect_to @product
    end

    def destroy
        @product = Product.find(params[:id])
        @product.destroy

        redirect_to products_path, status: :see_other
    end
end