n=gets.to_i
s=gets.chomp.chars
max=0
(s.size-1).times do|i|
  x=s.slice(0..i).uniq
  y=s.reverse.slice(0..(s.size-i-2)).uniq
  z=(x+y).size-(x+y).uniq.size
  if max<z then max=z end
end
p max