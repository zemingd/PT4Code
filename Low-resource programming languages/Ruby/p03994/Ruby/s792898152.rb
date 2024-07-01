s = gets.chomp.split("")
k = gets.to_i
after = []
s.each do |c|
  if c == "a"
    after << c
  elsif c.ord + k >= 123
    after << "a"
    k -= 123 - c.ord
  else
    after << c
  end
end
k %= 26
after[after.size - 1] = (after[after.size - 1].ord + k).chr
puts after.join("")
