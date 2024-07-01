n = gets.chomp.to_i

require 'prime'

ans = 0
1.upto(n) do |i|
  next if i.even?

  tmp = 0
  a = Prime.prime_division(i)
  tmp = a.map{|x,y| y+1}.inject(:*)

  if tmp == 8
    ans += 1
  end
end

p ans
