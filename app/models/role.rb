# == Schema Information
#
# Table name: roles
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  user_id     :integer
#  semester_id :integer
#  position_id :integer
#

class Role < ActiveRecord::Base
  belongs_to :semester
  belongs_to :user
  belongs_to :position

  before_create :set_name

  def set_name
    self.name = self.position.name
  end

end