# == Schema Information
#
# Table name: bugs
#
#  id          :integer          not null, primary key
#  bug_title   :string(255)
#  bug_type    :string(255)
#  version     :string(255)
#  product     :string(255)
#  description :text(255)
#  steps       :text(255)
#  priority    :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Bug < ActiveRecord::Base
  attr_accessible :bug_title, :bug_type, :description, :priority, :product, :steps, :version
  belongs_to :user
  
  #validation of the data
  validates :bug_title, presence: true, length: { maximum: 255 }
  validates :bug_type, presence: true,  length: { maximum: 50 }
  validates :description, presence: true
  validates :version, presence: true,  length: { maximum: 50 }
  validates :steps, presence: true
  validates :priority, presence: true,  length: { maximum: 50 }
  validates :product, presence: true, length: { maximum: 50 }
  validates :user_id, presence: true

  default_scope order: 'bugs.created_at DESC'

  #Data for DropDown Menu
  BUGTYPE = ['Bug','Improvement']
  PRIORITY = ['Blocker','Critical','Major','Minor','Nevermind, it\'s not really important']
end
