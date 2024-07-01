n = gets.chop.to_i
a = gets.chop.split.map(&:to_i)
even = a.select { |x| x.even? }
divide_3or5 = even.select { |x| x % 3 == 0 || n % 5 == 0 }
if even == divide_3or5
  puts "APPROVED"
else
  puts "DENIED"
end