class Post < ApplicationRecord
  belongs_to :user

  has_many :comments, dependent: :destroy

  validates :title, presence: { message: I18n.t("activerecord.errors.models.post.attributes.title.blank") }, length: { maximum: 100 }
  validates :content, presence: { message: I18n.t("activerecord.errors.models.post.attributes.content.blank") }, length: { maximum: 1500 }
end
