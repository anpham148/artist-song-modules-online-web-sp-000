require 'pry'
require_relative '../lib/concerns/memorable'

class Song
  extend Memorable
  attr_accessor :name, :artist


  @@songs = []

  def initialize
    @@songs << self
  end

  def self.find_by_name(name)
    @@songs.detect{|a| a.name == name}
  end

  def self.all
    @@songs
  end


  def to_param
    name.downcase.gsub(' ', '-')
  end
end
