class ProductRepository < Hanami::Repository
	def count
		products.count
	end
end
