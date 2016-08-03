class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.references :user, foreign_key: true
      t.references :product, foreign_key: true
      t.string :feedback

      t.timestamps
    end
    add_index :reviews, [:user_id, :created_at]

  end
end
