a, b, c = gets.chomp.split(' ').map{|i| i.to_i }

vac = a - b
res = c - vac

if res > 0
  puts res
else
  puts 0
end
