class List < ActiveRecord::Base
  belongs_to :user
  has_many :items
  validate :permissions_valid, on: :update

  def permissions_valid
    unless permissions == "Private"
        errors.add(:permissions, "Wrong permissions")
    end
  end
end
