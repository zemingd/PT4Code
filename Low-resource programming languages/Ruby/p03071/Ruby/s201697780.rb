a,b = gets.chomp.split(' ').map(&:to_i)

if a == b
  puts a + b
else
  if a > b
    puts a + a-1
  elsif b > a
    puts b + b-1
  end
end
