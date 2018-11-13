# == Schema Information
#
# Table name: artworks
#
#  id         :bigint(8)        not null, primary key
#  title      :string           not null
#  image_url  :string           not null
#  artist_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Artwork < ApplicationRecord
  validates :title, uniqueness: {scope: :artist_id, message: 'artist can only have one artwork with same time'}

  belongs_to :artist,
    foreign_key: :artist_id,
    class_name: :User 
    
  has_many :viewers,
    foreign_key: :artwork_id,
    class_name: :ArtworkShare 
    
  has_many :shared_viewers,
    through: :viewers,
    source: :viewer 
    
  

end
