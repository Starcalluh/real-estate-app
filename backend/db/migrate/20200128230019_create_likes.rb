class CreateLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :likes do |t|
      t.string (:listing_id)
      t.string (:user_id)
    end
  end
end
