class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :description
      t.integer :rating
      t.timestamps
    end
    add_reference :reviews, :product, index: true, foreign_key: true
    add_reference :reviews, :user, index: true, foreign_key: true

  end
end
