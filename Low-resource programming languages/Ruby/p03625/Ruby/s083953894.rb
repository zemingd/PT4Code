N = gets.to_i
line = gets
data = line.split(" ")
one = Array.new
two = Array.new
four = Array.new
data.each do |item|
  a = item.to_i
  if !one.include?(a)
    one << a
  else
    if !two.include?(a)
      one.delete(a)
      two << a
    else
      four << a
    end
  end
end
if two.empty?
  puts 0
else
  two.sort!{|a, b| b <=> a }
  max = two[0]
  if four.include?(max)
    puts max * max
  else
    puts max * two[1]
  end
end