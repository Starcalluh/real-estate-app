class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.string (:latitude)
      t.string (:longitude)
      t.string (:mls)
      t.string (:address)
      t.string (:city)
      t.string (:state)
      t.string (:zipcode)
      t.string (:bed)
      t.string (:bath)
      t.string (:price)
      t.integer (:garage)
      t.string (:property_type)
      t.string (:listing_link)
      t.string (:image)
      t.string (:acreage)
      t.string (:availability)
    end
  end
end