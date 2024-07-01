S,T = gets.chomp.split
A,B = gets.chomp.split.map(&:to_i)
U = gets.chomp

if U == S
  A -= 1
elsif U == T
  B -= 1
end

puts "#{A} #{B}"