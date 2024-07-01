N = gets.chomp.to_i
input = Array.new(N) { gets.chomp }
ans = 0
group = input.group_by { |v| v.chars.sort.join }
group.each do |key, val|
  ans += (1..val.size).to_a.combination(2).size
end
puts ans
