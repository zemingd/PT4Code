n=gets.to_i
s=gets.chomp.split("")

ans=0
(1..n).each do |i|
  a=s[0...i].uniq
  b=s[i..-1].uniq
  ans=[ans,(a&b).size].max
end
puts ans