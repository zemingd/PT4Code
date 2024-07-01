N = STDIN.gets.to_i
A = STDIN.gets.to_i

rest = N % 500
if rest <= A
  puts 'Yes'
else
  puts "No"
end
