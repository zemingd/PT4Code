A, B, C = gets.chomp.split.map(&:to_i)
if B / A >= C
  puts C
else
  puts B / A
end
