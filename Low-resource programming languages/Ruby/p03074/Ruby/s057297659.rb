def cin; gets.split.map(&:to_i) end
def cout(*x); puts x.join(" ") end

# exit if $0 != __FILE__

n, k = cin
s = gets.chop

b = nil
ls = []
s.chars.each do |x|
  if x == b then
    ls[ls.length-1] += 1
  else
    ls << 1
    b = x
  end
end

m = ls.max
i = 0
i = 1 if s[0] == "1" && k % 2 == 1
i = 1 if s[0] == "0" && k % 2 == 0
while i < ls.length
  x = 0
  l = [0, i-k].max
  r = [ls.length-1, i+k].min
  for j in l..r
    x += ls[j]
  end
  m = x if x > m
  i += 2
end

puts m