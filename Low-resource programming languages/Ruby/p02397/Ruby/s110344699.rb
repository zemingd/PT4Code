arr = []
while true
  input = gets.chomp.split(" ")
  x = input[0].to_i
  y = input[1].to_i
  break if x == 0 && y == 0
  if x > y
    arr += ["#{y} #{x}"]
  else
    arr += ["#{x} #{y}"]
  end
end
arr.each{|answer|
  puts answer
}