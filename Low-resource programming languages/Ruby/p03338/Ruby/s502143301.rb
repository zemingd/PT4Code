n = gets.to_i
s = gets.chomp.split("")

max = 0
1.upto(n) do |i|
  first = s[0...i].uniq.sort
  last = s[i..-1].uniq.sort
  num = first.size - (first - last).size
  max = [max, num].max
end

puts max