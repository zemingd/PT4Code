while true
  num = gets.chomp.split(" ").map(&:to_i).sort.join(" ")
  if num[0] == 0 && num[1] == 0
    break
  else
    puts num
end