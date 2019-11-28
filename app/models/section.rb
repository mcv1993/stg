class Section < ApplicationRecord
  belongs_to :client, required: false
  has_many :infos

end
