a,b = gets.split.map(&:to_i)

ans = 2019
if (b-a) < 2019
  (b-a).times do |i|
    test = a.modulo(2019) * (a+1).modulo(2019)
    if ans > test
      ans = test
    end
  end
else
  ans = 0
end

puts ans