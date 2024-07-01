S, T = gets.split
A, B = gets.split.map &:to_i
U = gets.chomp

puts  U.include?("red") ?  "#{A-1} #{B}" : "#{A} #{B-1}"
