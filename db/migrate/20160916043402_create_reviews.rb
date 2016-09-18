class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.date :review_date
      t.string :name
      t.string :address
      t.decimal :score
      t.string :url

      t.timestamps null: false
    end
  end
end
