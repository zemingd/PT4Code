A, B = gets.split.map(&:to_i)

if A >= 13
  puts B
elsif (6..12).cover?(A)
  puts B / 2
else
  puts 0
end
