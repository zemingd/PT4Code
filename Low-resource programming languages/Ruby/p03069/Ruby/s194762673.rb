n = gets.to_i
s = gets.chomp.chars

cntB = 0
cntW = 0

left  = 0
right = n - 1

s.each do |c|
  if c == '.'
    cntW += 1
  else
    left = cntW
    break
  end
end

s.reverse.each do |c|
  if c == '#'
    cntB += 1
  else
    right = n - cntB - 1
    break
  end
end

if 0 <= left && right <= n - 1 && left < right
  ary = s[left..right]
  puts [ary.count('#'), ary.count('.')].min
else
  puts 0
end
