require 'pry'
class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters
  
  def actors_list
    self.actors.collect do |a|
      #Actor.full_name
      #binding.pry
    end
  end
end