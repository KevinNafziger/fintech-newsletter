class CreateFeedRsses < ActiveRecord::Migration[6.0]
  def change
    create_table :feed_rsses do |t|

      t.timestamps
    end
  end
end
