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

class Survey < ActiveRecord::Base
  attr_accessible :comment, :result, :user_id
end
