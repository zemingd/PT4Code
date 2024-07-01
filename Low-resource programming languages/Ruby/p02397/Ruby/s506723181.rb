pairs = []
while true
  x, y = $stdin.readline.split(" ").map {|s| s.to_i }

  if x == 0 && y == 0
    break
  end

  pairs.push([x, y])
end

pairs.each {|pair|
  x = pair[0]
  y = pair[1]

  if x < y
    puts "#{x} #{y}"
  else
    puts "#{y} #{x}"
  end
}

