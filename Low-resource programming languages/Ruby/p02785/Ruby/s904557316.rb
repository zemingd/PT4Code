number, kill = gets.chomp.split().map(&:to_i)
monsters = gets.chomp.split().map(&:to_i)
zan=number-kill
if zan<=0
  puts 0
else
  puts monsters.sort!.slice(0,zan).inject(:+)
end  
