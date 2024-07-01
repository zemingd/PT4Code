n , m = gets.chop.split.map(&:to_i)
x = gets.chop.split.map(&:to_i)

x.sort!.reverse!


sa = []

if m > n then
  for i in 1..m-1 do
    sa << x[i-1] - x[i]
  end

  sa.sort!.reverse!

  ans = x.max-x.min

  (m-n-2).times do |i|
    ans -= sa[i]
  end


  puts ans
else
  puts 0
end
