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

require 'spec_helper'

describe ProductInfo do
  pending "add some examples to (or delete) #{__FILE__}"
end
