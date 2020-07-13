class CreateUserInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :user_infos do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.date :date_of_birth
      t.string :gender
      t.integer :weight
      t.integer :height

      t.timestamps
    end
  end
end
