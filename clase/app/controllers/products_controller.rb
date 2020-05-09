class ProductsController < ApplicationController
    def index
        @products = Product.all
    end

    def new
        @product = Product.new        
    end

    def show
        @product = Product.find(params[:id])
    end

    def create
        @product = Product.new(product_params)
        if @product.save
            redirect_to show_product_path(@product)
        else
            render :action => 'new'
        end
    end

    def destroy
        @product = Product.find(params[:id])
        @product.destroy
        redirect_to products_path
    end

    private

    def product_params
        params.require(:product).permit(:code, :name, :price, :comments, :category_id)
    end
end
