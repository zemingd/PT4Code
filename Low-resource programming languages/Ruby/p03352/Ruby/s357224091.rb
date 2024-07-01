require 'prime'

X = gets.to_i

max = 1

for i in 2..X do
  ary = Prime.prime_division(i)

  if ary.all? {|i| i[1] == ary[0][1] && i[1] >= 2} then
    tmp = 1
    ary.map { |e|
      tmp *= e[0]**e[1]
    }
    max = [max, tmp].max
  end
  
end

p max