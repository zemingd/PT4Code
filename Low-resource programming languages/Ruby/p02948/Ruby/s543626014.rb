n, m = STDIN.gets.chomp.split.map(&:to_i)
array = n.times.map do |i|
  ab = STDIN.gets.chomp.split.map(&:to_f)
  [ab[0], ab[1], ab[1]/ab[0]]
end
array.sort! {|a, b| a[2] <=> b[2] }.reverse!

day = 0
result = 0
array.each do |ary|
  p ary
  puts n
  if n >= ary[0]
    result += ary[1]
    puts result
  end
  n -= 1
end

puts result.to_i