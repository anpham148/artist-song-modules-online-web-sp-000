require 'pry'
require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/findable'
class Song
  extend Memorable
  attr_accessor :name, :artist



  @@songs = []

  def initialize
    @@songs << self
  end

  def self.all
    @@songs
  end


  def to_param
    name.downcase.gsub(' ', '-')
  end
end
