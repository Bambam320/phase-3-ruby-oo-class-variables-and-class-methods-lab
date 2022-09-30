require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize name, artist, genre
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    g_count = {}
    checkArr = Song.genres
    checkArr.each {|ele| g_count["#{ele}"] = 0}
    count = 0
    g_count.each do |a|
      @@genres.each do |b|
        if a[0] == b
          g_count[a[0]] += 1
        end
      end
    end
  end

  def self.artist_count
    a_count = {}
    checkArr = Song.artists
    checkArr.each {|ele| a_count["#{ele}"] = 0}
    a_count.each do |a|
      @@artists.each do |b|
        if a[0] == b
          a_count[a[0]] += 1
        end
      end
    end
  end
end


