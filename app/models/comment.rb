class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user, :reject_if => :all_blank

  def username
    self.user.username if self.user
  end
end

  # not solutions:
  # accepts_nested_attributes_for :user

  # def users_attributes=(user_attributes)
  #   user_attributes.values.each do |user_attribute|
  #     user = User.find_or_create_by(user_attribute)
  #     self.user = user
  #   end
  # end
