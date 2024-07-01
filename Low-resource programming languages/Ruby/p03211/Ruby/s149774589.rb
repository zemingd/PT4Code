S=gets.chomp
n=S.length
x=642
(n-2).times do |i|
  d = (753-S[i..i+2].to_i).abs
  x = d if x > d
end
p x