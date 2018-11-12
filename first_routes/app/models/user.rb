# == Schema Information
#
# Table name: users
#
#  id         :bigint(8)        not null, primary key
#  name       :string           not null
#  email      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  validates :email, presence: true
  validates :email, uniqueness: true 
  validates :name, presence: true
  validates :name, uniqueness: true 
  
  
end
