n = gets.to_i
ary = gets.split.map(&:to_i)
ary.reverse!

ans = 1

ary.each do |a|
  ans *= a
  if ans > 10 ** 18
    puts -1
    break
  elsif ans == 10 ** 18
    puts ans
    break
  else
  end
end

if ans < 10 ** 18
  puts ans
end