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

require 'spec_helper'

describe Product do
  pending "add some examples to (or delete) #{__FILE__}"
end
