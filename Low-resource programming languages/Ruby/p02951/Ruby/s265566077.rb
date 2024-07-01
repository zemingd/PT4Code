A, B, C=gets.chomp.split(" ").map(&:to_i);


if c - (A - B) > 0
  puts C - (A - B)
else
  puts 0
end