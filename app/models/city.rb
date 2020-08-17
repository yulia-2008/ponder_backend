class City < ApplicationRecord
    has_many :parks
    has_many :comments, through: :parks
end
