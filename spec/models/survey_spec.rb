# == Schema Information
#
# Table name: surveys
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  result     :text
#  comment    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Survey do
  pending "add some examples to (or delete) #{__FILE__}"
end
