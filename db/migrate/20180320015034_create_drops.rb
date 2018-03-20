class CreateDrops < ActiveRecord::Migration[5.1]
  def change
    create_table :drops do |t|
      t.string :title
      t.text :reason
      t.text :p_key
      t.text :sns_url

      t.timestamps
    end
  end
end
