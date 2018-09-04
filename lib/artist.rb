require 'pry'
require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/findable'
require_relative '../lib/concerns/paramable'


class Artist
  attr_accessor :name
  attr_reader :songs

  include Paramable, Memorable::InstanceMethods
  extend Memorable::ClassMethods, Findable

  @@all = []

  # def self.find_by_name(name)
  #   @@artists.detect{|a| a.name == name}
  # end

  def initialize
    super
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  def self.all
    @@all
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end

end
