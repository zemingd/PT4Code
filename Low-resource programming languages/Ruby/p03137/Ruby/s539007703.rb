num = gets.chomp.split(' ').map(&:to_i)
val = gets.chomp.split(' ').map(&:to_i)
if val.length == 1
  puts 0
  return
end
val.sort!()
sub = []
0.upto(val.length-2) do |i|
  sub << val[i+1]-val[i]
end
sub.sort!()
sum = 0
0.upto(sub.length-num[0]) do |i|
  sum += sub[i]
end
puts sum