class ChangeScoreFromStringToIntegerInReview < ActiveRecord::Migration
  def change
    change_column :reviews, :score, :decimal
  end
end
