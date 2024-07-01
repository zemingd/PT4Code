n = gets.to_i
s = gets.chomp.chars
counts = []

(1..n-2).each do |i|
  counts << (s[0..i] & s[i+1..-1]).count
end

puts counts.max