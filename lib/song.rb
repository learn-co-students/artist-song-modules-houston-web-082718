require 'pry'
require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/findable'
require_relative '../lib/concerns/paramable'

class Song
  attr_accessor :name
  attr_reader :artist

  include Paramable, Memorable::InstanceMethods
  extend Memorable::ClassMethods, Findable

  @@all = []

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@all
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end

end
