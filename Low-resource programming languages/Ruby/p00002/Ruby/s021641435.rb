while (n = gets.to_i) != 0 do
  sum = gets.split.map(&:to_i).inject(:+)
  puts Math.log10(sum).ceil
end