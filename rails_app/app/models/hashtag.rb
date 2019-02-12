class Hashtag < ApplicationRecord
    has_and_belongs_to_many :messages
    validates :hashtag, presence: true 
end
