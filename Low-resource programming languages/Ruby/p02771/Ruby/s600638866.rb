require 'set'
puts Set.new(gets.split.map(&:to_i)).size==2?:Yes: :No
