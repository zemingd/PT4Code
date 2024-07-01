N = gets.to_i
S = N.times.map { gets.chomp }

counter = Hash.new(0)

S.each do |s|
  counter[s.chars.sort] += 1
end

ans = 0

counter.each_value do |v|
  next if v <= 1

  ans += v * (v - 1) / 2
end 

puts ans
