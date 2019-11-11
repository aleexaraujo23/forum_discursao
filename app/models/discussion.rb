class Discussion < ApplicationRecord

 validates :headline, presence: true

 belongs_to :user
 has_many :comments


end
