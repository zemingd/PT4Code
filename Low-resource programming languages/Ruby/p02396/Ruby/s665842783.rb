x_a = []

while true
  x = $stdin.readline.to_i
  if x == 0
    break
  end

  x_a.push(x)
end

x_a.each_with_index {|x, i|
  puts "Case #{i + 1}: #{x}"
}

