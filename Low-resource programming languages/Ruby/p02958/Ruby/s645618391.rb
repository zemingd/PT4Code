n = gets.to_i
ary = gets.split.map(&:to_i)
a_sort = ary.sort
if ary == a_sort
  puts "YES"
  exit
end

swap = []
n.times do |i|
  swap.push(i) if ary[i] != a_sort[i]
end

if swap.size != 2
  puts "NO"
  exit
end

ary[swap[0]],ary[swap[1]] = ary[swap[1]],ary[swap[0]]

if ary == a_sort
  puts "YES"
else
  puts "NO
end




