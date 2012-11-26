# == Schema Information
#
# Table name: products
#
#  id            :integer          not null, primary key
#  product_name  :string(255)
#  version       :string(255)
#  release_notes :text
#  active        :boolean          default(FALSE)
#  internal      :boolean          default(FALSE)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Product < ActiveRecord::Base
  attr_accessible :product_name, :release_notes, :version

  validates :version, :uniqueness => true 

  PRODUCTNAME = ['MOD Live','MOD','Transcend']
end
