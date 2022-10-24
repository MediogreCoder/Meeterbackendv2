class CreateFaqs < ActiveRecord::Migration[7.0]
  def change
    create_table :faqs do |t|
      t.string :full_name
      t.string :topic
      t.string :topic_body

      t.timestamps
    end
  end
end
