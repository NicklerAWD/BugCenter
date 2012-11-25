class ProductInfo < ActiveRecord::Base
  attr_accessible :active, :internal, :product_name, :release_notes, :version
end
