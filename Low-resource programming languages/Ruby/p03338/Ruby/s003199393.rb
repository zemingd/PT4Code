n = gets.chomp.to_i
s = gets.chomp.to_s.split(//)

both_have = 0
max = 0

(n-1).times do |i|
  both_have = (s[0..i] & s[i+1..-1]).size
  if both_have > max
    max = both_have
  end
end

puts max