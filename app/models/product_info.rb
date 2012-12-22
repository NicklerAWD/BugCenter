# == Schema Information
#
# Table name: product_infos
#
#  id            :integer          not null, primary key
#  product_name  :string(255)
#  version       :string(255)
#  release_notes :text
#  active        :boolean
#  internal      :boolean
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class ProductInfo < ActiveRecord::Base
  attr_accessible :active, :internal, :product_name, :release_notes, :version
end
