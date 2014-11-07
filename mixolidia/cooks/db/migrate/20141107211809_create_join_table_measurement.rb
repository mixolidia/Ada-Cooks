class CreateJoinTableMeasurement < ActiveRecord::Migration
  def change
    create_join_table :recipes, :ingredients, table_name: :measurements do |t|
      t.index [:recipe_id, :ingredient_id, :unit]
      t.string :unit
    end
  end
end
