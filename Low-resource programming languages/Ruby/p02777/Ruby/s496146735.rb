colorlist = gets.chomp.split(" ")
nmlist = gets.chomp.split(" ").map(&:to_i)
gomi = gets.chomp
if colorlist[0] == gomi
  puts "#{nmlist[0]-1} #{nmlist[1]}"
else
  puts "#{nmlist[0]} #{nmlist[1]-1}"
end
