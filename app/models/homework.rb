class Homework < ApplicationRecord
  default_scope { order("homework_name") }
  # scope dengan argumen
  # scope :created_before, ->(time) { where("created_at < ?", time) }
  # penggunannya di controller tinggal Homework.created_before(Time.zone.now)

  validates :homework_name, presence: true
  validates :category, presence: true
  validates :deadline, presence: true
  validates :description, presence: true, length: { maximum: 300 }
  validate :deadline_cannot_be_in_the_past
  belongs_to :category

  #contoh custom validation
  def deadline_cannot_be_in_the_past
    errors.add(:deadline, "can't be in the past!") if
      deadline < Date.today
  end
end
