A, B, C = gets.chomp.split(" ").map(&:to_i)

if B / A >= C
  puts C
elsif B / A < C
  puts B / A
end