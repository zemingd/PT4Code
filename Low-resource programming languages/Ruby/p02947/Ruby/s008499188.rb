n = gets.chomp.to_i
s = []
(1..n).each do |i|
  s << gets.chomp
end

chars = s.map { |elem|  elem.chars.sort }
cnt = 0
chars.each do |i|
  chars.each do |j|
    if i == j
      cnt += 1
    end
  end
end

puts (cnt - n) / 2