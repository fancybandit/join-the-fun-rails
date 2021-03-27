class AddReferencesToRides < ActiveRecord::Migration[5.0]
  def change
    add_reference :rides, :taxi, foreign_key: {on_delete: :cascade}
    add_reference :rides, :passenger, foreign_key: {on_delete: :cascade}
  end
end
