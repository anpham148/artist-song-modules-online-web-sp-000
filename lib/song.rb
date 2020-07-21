require 'pry'
require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/findable'
require_relative '../lib/concerns/paramable'

class Song
  extend Memorable::ClassMethods, Findable
  include Memorable::InstanceMethods, Paramable

  attr_accessor :name, :artist

  @@songs = []

  # def initialize
  #   self.class.all << self
  # end

  def self.all
    @@songs
  end

end
