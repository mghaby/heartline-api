class User < ApplicationRecord
  has_secure_password

  validates :username, presence: true
  validates :password, presence: true
  validates :age, presence: true
  validates :weight, presence: true
  validates :goal_weight, presence: true
  validates :mf, presence: true
  validates :activity_level, presence: true
  validates :height, presence: true
  validates :water, presence: true

end
