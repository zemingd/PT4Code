n = gets.to_i
s = gets.chomp.chars

cntB = 0
cntW = 0

left  = 0
right = 0
flag  = false
lastW = 0

n.times do |i|
 
  if !flag && s[i] == '#'
    flag = true
  end
  
  if flag
    if s[i] == '#'
      cntB += 1
    elsif s[i] == '.'
      cntW += 1
      lastW = i
    end
  end
end
ans = [cntB - (n - 1 - lastW), cntW].min
puts ans > 0 ? ans : 0
