class Poem < ApplicationRecord
	include PgSearch
	pg_search_scope :search_by_title_and_content, against: [ :title, :content ]

	PEOPLE = %w(Мамочка Папочка Маринка Лёлик Другие)
	belongs_to :user
	validates :title, :content, :year, :user_id, presence: true
	validates :dedicated_to, inclusion: {in: PEOPLE}
  mount_uploader :cover, CoverUploader
end

