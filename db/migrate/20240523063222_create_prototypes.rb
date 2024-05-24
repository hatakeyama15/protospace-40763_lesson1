class CreatePrototypes < ActiveRecord::Migration[7.0]
  def change

    # ================================== 追加した =================================
    create_table :prototypes do |t|
      t.string     :title  # カラムの追加
      t.text       :catch_copy  # カラムの追加
      t.text       :concept   # カラムの追加
      t.references :user
      # ===========================================================================

      t.timestamps
    end
  end
end
