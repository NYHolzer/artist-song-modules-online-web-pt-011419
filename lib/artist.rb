require 'pry'

class Artist
  
  attr_accessor :name
  attr_reader :songs
  
  extend Memorable::ClassMethods, Findable
  include Memorable::InstanceMethods, Paramble
  
  @@artists = []

  # def initialize
  #   @@artists << self
  #   @songs = []
  # end

  def self.all
    @@artists
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
end
