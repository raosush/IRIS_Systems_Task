class CreateActivityLog < ActiveRecord::Migration[5.2]
  def change
    create_table :activity_logs do |t|
      t.bigint :user_id
      t.string :controller
      t.string :action
      t.text :params

      t.timestamps
    end
  end
end
