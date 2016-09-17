class ChangeDateTimeToDateInReview < ActiveRecord::Migration
  def change
    change_column :reviews, :review_date, :date
  end
end
