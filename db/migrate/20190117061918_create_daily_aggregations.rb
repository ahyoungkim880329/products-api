class CreateDailyAggregations < ActiveRecord::Migration[5.2]
  def change
    create_table :daily_aggregations do |t|
      t.date :date
      t.string :sort
      t.integer :products_count
      t.string :products_ids
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
