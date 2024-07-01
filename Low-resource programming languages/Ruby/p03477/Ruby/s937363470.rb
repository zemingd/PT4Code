n, a, b = gets.chomp.split(" ").map(&:to_i)
ary = []
(1..n).each do |d|
  e = d.to_s.chars.map(&:to_i).sum
  if a <= e && b >= e 
   ary << d
  end
end

p ary.sum