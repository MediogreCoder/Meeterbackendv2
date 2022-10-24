class CreateMentorings < ActiveRecord::Migration[7.0]
  def change
    create_table :mentorings do |t|
      t.string :mentee_full_name
      t.string :mentor_full_name
      t.string :activity
      t.boolean :action_needed
      t.boolean :confirmed

      t.timestamps
    end
  end
end
