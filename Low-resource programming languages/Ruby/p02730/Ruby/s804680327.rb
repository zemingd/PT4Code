s = gets.chomp

def check(s, i, j, n = 0)
  c = (i + j - 1) / 2
#  puts "  " * n + "#{i}.#{c}.#{j} " + s[i..j]
  return true if c < i
  i.upto(c).all? { |k|
    s[k] == s[j - k]
  } &&
  check(s, i, c, n + 1) &&
  check(s, i+j-c, j, n + 1)
end

if check(s, 0, s.length-1)
  puts "Yes"
else
  puts "No"
end