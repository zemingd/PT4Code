input = gets.chomp.split(" ")
start = input[0].to_i
last = input[1].to_i
target = input[2].to_i

count = 0
(last - start + 1).times{
  if target % start == 0
    count += 1
  end
  start += 1
}
puts count