s = gets.split
n = 700
a = s.length

(0..a).each do |i|
  if s[i] == "o"
    n +=100
  end
end
print n