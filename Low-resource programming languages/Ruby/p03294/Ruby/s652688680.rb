n = gets.chomp.to_i
arr = gets.chomp.split(' ').map(&:to_i)
lcm = arr.inject(:lcm)

ans = 0
arr.each do |e|
  ans += (lcm-1) % e
end

puts ans