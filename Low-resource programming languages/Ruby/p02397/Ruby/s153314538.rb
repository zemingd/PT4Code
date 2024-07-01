loop do
  a,b = gets.split().map(&:to_i)
  if  a == 0 && b == 0 then break end
  if a > b
    puts "#{b} #{a}"
  elsif b > a 
    puts "#{a} #{b}"
  else
    puts "#{a} #{b}"
  end
end
