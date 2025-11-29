class ProductsController < ApplicationController
    def index #def é função
        @products = Product.all 
    end
    def show
    end
end