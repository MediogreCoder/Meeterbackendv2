class CreateMessagings < ActiveRecord::Migration[7.0]
  def change
    create_table :messagings do |t|
      t.string :mentee_full_name
      t.string :mentor_full_name
      t.string :message_owner
      t.string :message_body

      t.timestamps
    end
  end
end
