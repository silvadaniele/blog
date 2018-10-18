# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  title      :string
#  keywords   :string
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  author_id  :integer
#

class Article < ApplicationRecord

  belongs_to :author, class_name: "User"
  
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :title, length: { minimum: 2 }
  validates :author_id, presence: true
  validates :keywords, presence: true
  validates :body, presence: true
  validates :body, length: { minimum: 10 }
end
