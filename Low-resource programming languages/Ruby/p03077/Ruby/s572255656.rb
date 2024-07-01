N = gets.chomp.to_i
time = Array.new(5) { gets.chomp.to_i }

if time.min >= N
  puts 5
else
  puts ((N.to_f / time.min).ceil) + 4
end
