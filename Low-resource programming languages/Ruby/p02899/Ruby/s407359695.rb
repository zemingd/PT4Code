n = gets.strip.to_i
data = gets.strip.split.map(&:to_i)
s = []

(0..data.length - 1).each do |i|
  s[data[i]] = i + 1
end
puts s.join(' ').strip