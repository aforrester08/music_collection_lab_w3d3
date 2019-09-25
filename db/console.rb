require('pry')
require_relative('../models/album')
require_relative('../models/artist')

artist1 = Artist.new('name' => 'Prince')
artist1.save()

album1 = Album.new('title' => 'Purple Rain', 'genre' => 'rock')
album1.save()




binding.pry
nil
