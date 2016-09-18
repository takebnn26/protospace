class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|

      t.string        :content
      t.integer       :content_type
      t.integer       :prototype_id
      t.timestamps
    end
  end
end
