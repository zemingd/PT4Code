a,b,c,d = gets.split.map &:to_i

def div_ceil(a,b)
  (a + b - 1) / b
end

s = div_ceil(c,b)
t = div_ceil(a,d)

puts s <= t ? "Yes" : "No"

