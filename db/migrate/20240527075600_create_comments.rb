class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.text :text
      t.references :user, foreign_key: true   # 外部キー制約がある為、user_idが作成される
      t.references :prototype, foreign_key: true

      t.timestamps
    end
  end
end
