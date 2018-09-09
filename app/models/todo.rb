class Todo < ApplicationRecord
    has_many :checkeds
    has_many :users, through: :checkeds
end
