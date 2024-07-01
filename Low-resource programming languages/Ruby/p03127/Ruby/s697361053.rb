n　= gets.chomp.to_i
as = gets.chomp.split(" ").map(&:to_i)
while true do
  as.sort!.reverse!
  min = as.min
  asm = as.map{|a| a % min == 0 ? a : a % min }
  break if as == asm
  as = asm
end
puts as.last
