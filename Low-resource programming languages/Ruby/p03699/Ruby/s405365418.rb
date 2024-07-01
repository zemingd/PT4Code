N = gets.to_i
s = N.times.map{gets.to_i}
s = s.sort
sum = s.inject(:+)
if sum % 10 != 0
  puts sum
else
  s.each do |x|
    if x % 10 != 0
      sum -= x
      puts sum
      exit
    end
  end
  puts 0
end
