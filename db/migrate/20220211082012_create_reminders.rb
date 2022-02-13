class CreateReminders < ActiveRecord::Migration[7.0]
  def change
    create_table :reminders do |t|
      t.string :link
      t.string :username
      t.string :channel

      t.timestamps
    end
  end
end
