require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

require 'bigdecimal'
require 'bigdecimal/util'

def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

a, b, c = gets_i_list
puts 4 * a * b < (c - a - b) ** 2 && c - a - b > 0 ? "Yes" : "No"