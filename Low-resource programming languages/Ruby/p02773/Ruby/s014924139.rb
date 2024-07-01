n = gets.to_i
ary = []
ans = []
k = 0
n.times do
  x = gets.chomp
  ary << x
end
count = Hash.new(0)
ary.each do |elem|
  count[elem] += 1
end
count = count.sort_by { |_, v| v }.reverse.to_h
count.each do |c|
  if c[1] >= k
    ans << c[0]
    puts c[0]
    k = c[1]
  end  
end
ans = ans.uniq!
puts ans