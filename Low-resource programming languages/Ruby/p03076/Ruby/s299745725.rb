a = gets.to_i
b = gets.to_i
c = gets.to_i
d = gets.to_i
e = gets.to_i

ans = 0
temp = 0
[a,b,c,d,e].each do |v|
  i = v % 10
  if i == 0 then
    ans += v
    next
  else
    if temp < 10 - i then
      temp = 10 - i
    end
    ans += v + 10 - i
  end
end

p ans-temp
