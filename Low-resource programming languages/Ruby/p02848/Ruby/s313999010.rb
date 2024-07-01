n = gets.chomp.to_i
s = gets.chomp.split('')
(0..s.size-1).each do |i|
  s[i] = ((s[i].ord + n) % "A".ord % 26 + "A".ord).chr
end
puts s.join()