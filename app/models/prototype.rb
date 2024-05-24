class Prototype < ApplicationRecord

  # =================================== 追加した =============================

  validates :title, presence: true
  validates :catch_copy, presence: true
  validates :concept , presence: true
  validates :user, presence: true # + 外部キー制約

  # ==========================================================================
end
