class ProductService
  class << self
    def new
      ProductRepository.new
    end

    def create(product)
      ProductRepository.create(product)
    end

    def save(product)
      isSave = ProductRepository.save(product)
    end

  end
end
