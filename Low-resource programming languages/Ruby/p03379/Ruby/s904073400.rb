n   = gets.to_i
ary = gets.split.map(&:to_i)

n.times do |i|
  ary[i] = [ary[i], i]
end

ary.sort!

n.times do |i|
  ary[i] << ary[n / 2 - i / (n / 2)][0]
end

ary.sort_by{|a| a[1]}.each do |x|
  puts x[2]
end
