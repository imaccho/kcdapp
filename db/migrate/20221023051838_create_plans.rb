class CreatePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.date :day
      t.string :on_off
      t.string :off_lesson
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
