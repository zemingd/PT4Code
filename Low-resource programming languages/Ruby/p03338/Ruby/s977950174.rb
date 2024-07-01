n=gets.to_i
s=gets.chomp
max=0
(1..n-1).each do |i|
  x=s.chars
  y=x.slice!(1,i)
  max = (x&y).size if max<(x&y).size
end

puts max