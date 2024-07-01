str = gets.split.map(&:to_s)
int = gets.split.map(&:to_i)
u = gets.chomp

if str[0] == u
  int[0] -= 1
else
  int[1] -= 1
end

puts int.join(" ")