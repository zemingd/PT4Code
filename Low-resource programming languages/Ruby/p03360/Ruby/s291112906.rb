a,b,c = gets.chomp.split(' ').map(&:to_i)
k = gets.chomp.to_i

m = [a, b, c].max
if m == a then
  puts (a * (2 ** k) + b + c).to_s
elsif m == b then
  puts (a + b * (2 ** k) + c).to_s
else
  puts (a + b + c * (2 ** k)).to_s
end