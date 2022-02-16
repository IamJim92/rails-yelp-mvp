class AddRestaurantIdToReviews < ActiveRecord::Migration[6.1]
  def change
    add_reference :reviews, :restaurant, foriegn_key: true, null: false
  end
end
