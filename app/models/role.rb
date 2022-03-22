class Role < ApplicationRecord
  belongs_to :user
  enum name:[:admin, :user]
end
