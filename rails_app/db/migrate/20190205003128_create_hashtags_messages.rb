class CreateHashtagsMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :hashtags_messages do |t|
      t.belongs_to :hashtag
      t.belongs_to :message
    end
  end
end
