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
#  user_id     :integer
#

require 'spec_helper'

describe Bug do

  before { @bug = Bug.new(bug_title: "Nouveau bug", bug_type: "Dur", version: "1.0", product: "Toufoufou", description: "Un enfer sur terre", steps: "ca craint", priority: "dur dur") }

  subject { @bug }
	#Check the attributs for testing them
  it { should respond_to(:bug_title) }
  it { should respond_to(:bug_type) }
  it { should respond_to(:version) }
  it { should respond_to(:product) }
  it { should respond_to(:description) }
  it { should respond_to(:steps) }
  it { should respond_to(:priority) }

  #Check the validity of the bug_title
  it { should be_valid }

  describe "when the bug_title is not present" do
    before { @bug.bug_title = " " }
    it { should_not be_valid }
  end

  describe "when the bug_type is not present" do
    before { @bug.bug_type = " " }
    it { should_not be_valid }
  end

  describe "when the version is not present" do
    before { @bug.version = " " }
    it { should_not be_valid }
  end

  describe "when the product is not present" do
    before { @bug.product = " " }
    it { should_not be_valid }
  end

  describe "when the description is not present" do
    before { @bug.description = " " }
    it { should_not be_valid }
  end

  describe "when the steps is not present" do
    before { @bug.steps = " " }
    it { should_not be_valid }
  end

  describe "when the priority is not present" do
    before { @bug.priority = " " }
    it { should_not be_valid }
  end

end
