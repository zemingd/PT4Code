N = gets.to_i
A = gets.chomp.split.map(&:to_i).sort!
max = A.max
ary = Array.new(max, 0)
ans = 0

A.each do |e|
  ary[e-1] += 1
end

A.uniq.each do |e|
  next if ary[e-1] == 0
  ans += 1  if ary[e-1] == 1
  (e-1).step(max, e) do |i|
    ary[i] = 0
  end
end

puts ans
  
    

  




