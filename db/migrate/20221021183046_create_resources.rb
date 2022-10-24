class CreateResources < ActiveRecord::Migration[7.0]
  def change
    create_table :resources do |t|
      t.string :full_name
      t.string :topic
      t.string :topic_link

      t.timestamps
    end
  end
end
