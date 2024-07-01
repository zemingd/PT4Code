n = gets.to_i

ans = 1
times = (0...n).map{ gets.to_i }.uniq

times.each do |time|
  ans = time.lcm(ans)
end

puts ans