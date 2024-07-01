n = gets
s = gets.chomp
tmp = 0
answer = 0
while tmp != nil do
  tmp = s.index("ABC",tmp)
  if tmp != nil then
    tmp += 1
    answer += 1
  end
end
print "#{answer}"