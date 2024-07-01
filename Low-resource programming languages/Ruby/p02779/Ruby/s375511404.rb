require 'set'
n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
if a.to_set.size == a.size then
  print("YES")
else
  print("NO")
end