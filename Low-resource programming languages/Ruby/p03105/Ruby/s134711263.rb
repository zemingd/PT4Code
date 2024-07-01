A, B, C = STDIN.gets.chomp.split(' ').map(&:to_i)
if B / A >= C then
  puts C
else
  puts B / A
end