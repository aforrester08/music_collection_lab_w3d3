require('pry')
require_relative('../models/album')
require_relative('../models/artist')

Artist.delete_all()
Album.delete_all()
artist1 = Artist.new('name' => 'Prince')
artist1.save()

album1 = Album.new('title' => 'Purple Rain', 'genre' => 'rock')
album1.save()




binding.pry
nil
