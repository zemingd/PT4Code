n = gets.to_i
s = gets.chomp.split("")
ar = []

(0..n-2).to_a.each do |i|
 ar << (s[0..i] & s[i+1..-1]).count
end
