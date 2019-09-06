class CreatePublications < ActiveRecord::Migration[6.0]
  def change
    create_table :publications do |t|
      t.references :contact, null: false, foreign_key: true
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
