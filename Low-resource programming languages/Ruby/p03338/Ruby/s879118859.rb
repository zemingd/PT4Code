N = gets.chomp.to_i

S = gets.chomp.split("")

def include_both(a1, a2)
  a1.sort!.uniq!
  a2.sort!.uniq!

  count = 0

  for i in 0...a1.length do
    for j in 0...a2.length do
      if a1[i] == a2[j] then
        count += 1
      end
    end
  end
  
  count
end

max = 0
for i in 1..(N/2) do
  s1 = S[0, i]
  s2 = S[i, N-1]

  max = [max, include_both(s1, s2)].max
end

puts max