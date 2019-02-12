class Message < ApplicationRecord
    has_and_belongs_to_many :hashtags
    validates :content, :author, :data, :id_tweet, presence: true
end
