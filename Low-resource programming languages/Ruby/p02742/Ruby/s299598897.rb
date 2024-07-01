h, w = gets.chomp.split(' ').map(&:to_i)

if h == 1 && w == 1 
  puts 0
else
  a = h * w
  if a % 2 == 1
     puts a / 2 + 1
  else
    puts a / 2  
  end
end

