while num = gets.chomp do
  break if num == "0"
  arr = num.split("").map(&:to_i)
  printf "%d\n", arr.inject(:+)
end