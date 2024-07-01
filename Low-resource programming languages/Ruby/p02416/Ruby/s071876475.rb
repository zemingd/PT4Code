while (x = gets).to_i != 0 do
  puts x.split("").map(&:to_i).inject(:+)
end