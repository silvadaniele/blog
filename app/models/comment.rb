# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  author     :string
#  body       :text
#  article_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Comment < ApplicationRecord
  belongs_to :article

  validates :author, presence: true
  validates :author, length: { minimum: 3 }
  validates :body, presence: true
  validates :body, length: { minimum: 4 }
end
