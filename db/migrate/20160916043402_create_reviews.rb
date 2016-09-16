class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :name
      t.string :address
      t.string :score
      t.string :url

      t.timestamps null: false
    end
  end
end
