s = gets.split("").map(&:to_i)

c = 0

x = 0
i = 0

until i == s.size do
    if (s[i]==0 and s[i+1]==1) or (s[i]==1 and s[i+1]==0)
      c += 2
      s[i,2] = []
      i -= 2
    end
    i += 1
end
p c