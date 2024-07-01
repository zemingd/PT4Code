A, B, C, D = gets.split.map(&:to_i)

if (A..B).include?(C)
  puts (A..B).include?(D) ? D - C : B - C
elsif (A..B).include?(D)
  puts D - A
elsif (C..D).include?(A) && (C..D).include?(B)
  puts B - A
else
  puts 0
end

