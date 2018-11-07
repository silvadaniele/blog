# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  body       :text
#  article_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  author_id  :integer
#

class Comment < ApplicationRecord

  belongs_to :article
  belongs_to :author, class_name: "User"

  validates :author_id, presence: true
  validates :body, presence: true
  validates :body, length: { minimum: 4 }
end
