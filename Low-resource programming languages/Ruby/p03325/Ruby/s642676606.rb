require 'prime'
n = gets.chop.to_i
a = gets.chop.split.map(&:to_i)
a.select! {|item| item % 2 == 0 }
ans = 0
if a.length != 0
  a.map {|item|
    ans += Prime.prime_division(item)[0][1]
  }
end
puts ans