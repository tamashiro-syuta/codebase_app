class Post < ApplicationRecord

    # 1対多のリレーション付け
    belongs_to :user

    validates :user_id, {presence: true}
    validates :content, {presence: true}
end
