A, B, C = gets.chomp.split.map(&:to_i)

if B / A >= C then
  puts C
else
  puts B / A
end