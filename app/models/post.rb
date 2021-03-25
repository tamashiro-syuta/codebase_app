class Post < ApplicationRecord

    # 1対多のリレーション付け
    belongs_to :user

    # post は１つの画像をもつ ことのリレーション付け
    has_many_attached :images # activeStorageではpostテーブルにimageカラムを追加する必要はない

    validates :user_id, {presence: true}
    validates :content, {presence: true}
    
    # addressカラムを基準に緯度経度を算出
    geocoded_by :address
    # 住所変更時に緯度経度も変更する
    after_validation :geocode, if: :address_changed?

end
