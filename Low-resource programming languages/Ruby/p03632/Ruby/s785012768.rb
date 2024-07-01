A, B, C, D = gets.chomp.split(' ').map(&:to_i)

if D <= A || B <= C
  puts 0
  exit
end

puts [B, D].min - [A, C].max
