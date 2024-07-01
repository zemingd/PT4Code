n,x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort

sum = a.inject(:+)

if sum==x
  p n
elsif sum<x
  p n-1
else
  ans = 0
  a.each{|t|
    ans += 1 if x>=t
    x-=t
  }
  p ans
end

