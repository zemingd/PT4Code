print 'Aの入力' + "\n"
a = gets.to_i
print 'Bの入力' + "\n"
b = gets.to_i
count = 0;
for i in a..b do
  i = i.to_s
  iFront = i[0, 2]
  iEnd = i.reverse[0,2]
  if iFront == iEnd then
     count += 1
  end
end

print "回文数は#{count}個です。"