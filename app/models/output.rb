class Output < ApplicationRecord
  belongs_to :user
  belongs_to :lesson

  has_many :comments, dependent: :destroy
end
