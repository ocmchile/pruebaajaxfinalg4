class CreateComplains < ActiveRecord::Migration
  def change
    create_table :complains do |t|
      t.string :title
      t.references :company, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
