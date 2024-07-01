date = []
while tmp = gets
  break if tmp.to_i == 0
  total = tmp.chomp.split("").map(&:to_i).inject(:+)
  date << total
end

puts date

