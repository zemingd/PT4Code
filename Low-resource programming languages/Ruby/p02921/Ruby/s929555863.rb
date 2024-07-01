s = gets().chars
t = gets().chars
j = 0

for i in 0..2
    if s[i]==t[i]
      j += 1
    end
end

puts(j)