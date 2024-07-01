n = gets.to_i
s = gets.chomp.split.map(&:to_i)

ary = []
(1..n).each do |i|
  ary << [i, s[i-1]]
end

ary.sort_by!{|x| x[1]}

(n-1).times do |i|
  print "#{ary[i][0]} "
end
print ary[-1][0]