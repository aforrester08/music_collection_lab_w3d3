require('pry')
require_relative('../models/album')
require_relative('../models/artist')

Album.delete_all()
Artist.delete_all()

artist1 = Artist.new('name' => 'Prince')
artist1.save()

album1 = Album.new(
  'title' => 'Purple Rain',
  'genre' => 'rock',
  'artist_id' => artist1.id
  )
album1.save()




binding.pry
nil
