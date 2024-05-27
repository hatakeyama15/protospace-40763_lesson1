class CreatePrototypes < ActiveRecord::Migration[7.0]
  def change

    # ================================== 制約も追加した =================================
    create_table :prototypes do |t|
      t.string     :title, null: false # カラムの追加
      t.text       :catch_copy, null: false # カラムの追加
      t.text       :concept, null: false   # カラムの追加
      t.references :user, null: false, foreign_key: true
      # ===========================================================================

      t.timestamps
    end
  end
end
