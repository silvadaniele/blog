# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  title      :string
#  keywords   :string
#  author     :string
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Article < ApplicationRecord
  has_many :comments

  validates :title, presence: true
  validates :title, length: { minimum: 2 }
  validates :author, presence: true
  validates :keywords, presence: true
  validates :body, presence: true
  validates :body, length: { minimum: 10 }
end
