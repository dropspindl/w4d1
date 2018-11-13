# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Artwork.destroy_all
ArtworkShare.destroy_all

u1 = User.create(username: 'Josh')
u2 = User.create(username: 'Erica')
u3 = User.create(username: 'Bill')

a1 = Artwork.create(title: 'Untitled', image_url: 'josh1.com', artist_id: u1[:id])
a2 = Artwork.create(title: 'Pumpkins', image_url: 'josh1.com', artist_id: u1[:id])
a3 = Artwork.create(title: 'Untitled', image_url: 'erica.com', artist_id: u2[:id])
a4 = Artwork.create(title: 'Skeletons', image_url: 'erica.com', artist_id: u2[:id])
a5 = Artwork.create(title: 'Bob', image_url: 'bill.com', artist_id: u3[:id])

l1 = ArtworkShare.create(artwork_id: a2[:id], viewer_id: u2[:id])
l2 = ArtworkShare.create(artwork_id: a5[:id], viewer_id: u2[:id])
l3 = ArtworkShare.create(artwork_id: a1[:id], viewer_id: u3[:id])
l4 = ArtworkShare.create(artwork_id: a2[:id], viewer_id: u3[:id])
l5 = ArtworkShare.create(artwork_id: a3[:id], viewer_id: u3[:id])
l6 = ArtworkShare.create(artwork_id: a4[:id], viewer_id: u3[:id])