a, b = gets.chomp.split(' ').map { |i| i.to_i }
if 1 <= a and a <= 100000000  and 1 <= b and b <= 100000000
  puts "#{a/b} #{a%b} #{a.to_f/b}"
end