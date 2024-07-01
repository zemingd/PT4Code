N = gets.to_i
S = gets.chomp

black_count = 0
white_count = 0
S.each_char do |c|
  if c == '#'
    black_count += 1
  elsif c == '.' && black_count > 0
    white_count += 1
  end
end

puts [black_count, white_count].min
