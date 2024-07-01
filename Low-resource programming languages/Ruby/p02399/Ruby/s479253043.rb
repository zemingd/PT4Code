a, b = gets.chomp.split(' ').map { |i| i.to_i }
if 1 <= a and a <= 1000000000  and 1 <= b and b <= 1000000000
  puts "#{a/b} #{a%b} #{sprintf("%5f", a.to_f/b)}"
end