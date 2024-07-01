n,l=gets.split.map(&:to_i)
s = Array.new(n+1)
sort = Array.new(n+1)
s[0] = ""
for i in 1..n
  s[i]= gets.chomp
end
sort = s.sort
for i in 1..n
  s[0]+=sort[i]
end

puts s[0]
