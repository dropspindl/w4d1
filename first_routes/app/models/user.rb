# == Schema Information
#
# Table name: users
#
#  id         :bigint(8)        not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  username   :string           not null
#

class User < ApplicationRecord
  validates :username, presence: true
  validates :username, uniqueness: true 
  
  has_many :artworks,
    foreign_key: :artist_id,
    class_name: :Artwork,
    dependent: :destroy
    
  has_many :viewed_artworks,
    foreign_key: :viewer_id,
    class_name: :ArtworkShare,
    dependent: :destroy
    
  has_many :shared_artworks,
    through: :viewed_artworks,
    source: :artwork
  
end
