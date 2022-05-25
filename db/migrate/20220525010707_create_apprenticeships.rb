class CreateApprenticeships < ActiveRecord::Migration[7.0]
  def change
    create_table :apprenticeships do |t|
      t.references :user, null: false, foreign_key: true
      t.references :topic, null: false, foreign_key: true
      t.time :duration
      t.string :observation

      t.timestamps
    end
  end
end
