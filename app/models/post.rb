class Post < ApplicationRecord

    # 1対多のリレーション付け
    belongs_to :user

    # post は１つの画像をもつ ことのリレーション付け
    has_one_attached :image # activeStorageではpostテーブルにimageカラムを追加する必要はない

    validates :user_id, {presence: true}
    validates :content, {presence: true}
end
