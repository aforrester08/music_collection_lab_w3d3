require('pg')
require_relative('../db/sql_runner')
require_relative('artist')

class Album

  attr_accessor :title, :genre
  attr_reader :id, :customer_id

  def initialize(options)
    @title = options['title']
    @genre = options['genre']
    @id = options['id'].to_i if options['id']
    @customer_id = options['customer_id'].to_i()
  end

  def save()
    sql = "INSERT INTO albums (title, genre) VALUES
      (
        $1, $2
      )
      RETURNING id"
      values = [@title, @genre]
      @id = SqlRunner.run(sql, values)[0]["id"].to_i
  end

end
