while true
  num = gets.split(" ").map(&:to_i).sort.join(" ")
  break if num[0] == 0 && num[1] == 0
  puts num
end