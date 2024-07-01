N, K = gets.split.map &:to_i
A = gets.split.map &:to_i

a = A.group_by {|i| i}.map {|i, a| a.size }.sort
a = a[0, (a.size-K)]
if a 
  puts a.inject &:+
else
  puts 0
end
