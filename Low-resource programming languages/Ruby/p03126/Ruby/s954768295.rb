require 'set'
N, M = gets.split.map(&:to_i)
menu = Set.new 1..M
N.times do
  k, *a = gets.split.map(&:to_i)
  menu &= a
end
p menu.size