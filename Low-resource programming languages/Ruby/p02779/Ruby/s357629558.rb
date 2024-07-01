require 'set'
n = gets.to_i
if Set.new(gets.chomp.split(" ").map(&:to_i)).size == n
  puts "YES"
else
  puts "NO"
end