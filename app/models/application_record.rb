class ApplicationRecord < ActiveRecord::Base
  # 論理削除のため追加
  acts_as_paranoid

  self.abstract_class = true
end
