class CreateFeedbacks < ActiveRecord::Migration[6.1]
  def change
    create_table :feedbacks do |t|
      t.integer :rating
      t.text :comment
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
