class StockRepository < Hanami::Repository
  associations do
    has_many :products
  end

  def create_with_products(data)
  	assoc(:products).create(data)
  end

  def find_with_products(id)
  	aggregate(:products).where(id: id).as(Product).one
  end
end
