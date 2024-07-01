set = gets.chomp.split.map(&:to_i)

set.size.times do |i|
  if set[i] == 0
    puts i + 1
  end
end