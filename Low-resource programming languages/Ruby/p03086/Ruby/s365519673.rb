ary = gets.chomp.split("")
t = 0
res = 0
ary.each do |a|
  if ['A', 'C', 'G', 'T'].include?(a)
    t += 1
    res = t if t > res
  else
    res = t if t > res
    t = 0
  end
end

puts res
