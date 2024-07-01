#coding: utf-8

money = 100000

num = STDIN.gets.to_i

while num > 0 do
  money = money + (money * 0.05)
  up = money % 1000
  if up > 0 then
    money = money - up + 1000
  end
  num = num - 1
end

puts money.to_i
	