loop do
line = gets.chomp!.split.map(&:to_i).sort
a = line[0].to_i
b = line[1].to_i
if a != 0 && b != 0 then
puts "#{a} #{b}"
else
break
end
end
