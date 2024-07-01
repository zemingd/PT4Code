A,B,C = gets.chomp.split.map(&:to_i)

if (A * C) <= B
  puts C
elsif (A * C) >= B
  puts (B / A)
elsif (B / A) == 0
  puts 0
end
