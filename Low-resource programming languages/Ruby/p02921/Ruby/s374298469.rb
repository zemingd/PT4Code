s = gets.split("")
t = gets.split("")

i = 0
cnt = 0
while i < s.length do
  if s[i]==t[i] then cnt += 1 end
  i += 1
end

puts cnt