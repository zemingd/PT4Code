A, B, C = gets.chomp.split(' ').map(&:to_i)

nokori = A - B

if nokori > C
  puts 0
else
  puts C - nokori
end
