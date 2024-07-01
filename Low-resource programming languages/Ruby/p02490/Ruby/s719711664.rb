flag = true
while flag
  num = gets.chomp.split(" ").map(&:to_i).sort.join(" ")
  if num[0] == num[1] == 0
    flag = false
  else
    puts num[0] num[1]
end