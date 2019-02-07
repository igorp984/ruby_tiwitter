class AddIdTweetToMessages < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :id_tweet, :string
  end
end
