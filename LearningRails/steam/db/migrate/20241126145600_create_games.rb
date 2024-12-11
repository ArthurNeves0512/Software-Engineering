class CreateGames < ActiveRecord::Migration[8.0]
  def change
    create_table 'games' do |t|
      t.string "name"
      t.string "publisher_name"
      t.date "release_date"
      t.float "price"
      t.timestamps
    end
  end
end
