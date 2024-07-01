require 'prime'

X = gets.to_i

max = 0

for i in 2...X do
  ary = Prime.prime_division(i)

  if ary.length == 1 && ary[0][1] >= 2 then
    max = [max, ary[0][0]**ary[0][1]].max
  end
end

p max