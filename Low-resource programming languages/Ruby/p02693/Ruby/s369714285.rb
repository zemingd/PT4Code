k=gets.to_i
a,b=gets.split.map(&:to_i)
ans="NG"
for i in a..b do
  if i % k == 0 then
    ans="OK"
  end
end
puts ans
