class ProductRepository
  class << self
    def new
      @product = Product.new
    end

    def create(product)
      @product = Product.new(product)
    end

    def save(product)
      isSave = product.save
    end
  end
end
