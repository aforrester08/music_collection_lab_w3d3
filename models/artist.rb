require('pg')
require_relative('../db/sql_runner')
require_relative('album')

class Artist

  attr_reader :name, :id

  def initialize(options)
    @name = options['name']
    @id = options['id'].to_i() if options['id']

  end


end
