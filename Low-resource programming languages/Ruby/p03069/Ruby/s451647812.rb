n   = gets.to_i
ary = gets.chomp.chars

min = 1E6

cntB = 0
cntW = ary.count('.')

ary.size.times do |i|
  if ary[i] == '.'
    cntW -= 1
  end
  if ary[i] == '#' || i == n - 1
    min = [min, cntB + cntW].min
    cntB += 1
  end
end

puts min
