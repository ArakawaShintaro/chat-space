class GroupUser < ApplicationRecord
  #userとgroupの中間テーブル
  belongs_to :user
  belongs_to :group
end
