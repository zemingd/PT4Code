a, b = gets.split.map(&:to_i)
cnt = 0

a.upto(b) do |i|
  chars = i.to_s.split('')
  next unless chars[0] == chars[4] && chars[1] == chars[3]
  cnt += 1
end

puts cnt