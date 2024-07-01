require 'bigdecimal'
require 'bigdecimal/util'

n = gets.chomp.to_i
ans=0
arr = gets.chomp.split(" ").map(&:to_i).each_cons(3) do |a,b,c|
  if [a,b,c].sort[1]==b 
      ans += 1
  end
end
puts ans