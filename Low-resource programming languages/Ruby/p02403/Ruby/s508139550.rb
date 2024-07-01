inputs = []

while true
  h, w = $stdin.readline.split(" ").map {|s| s.to_i }

  if h == 0 && w == 0
    break
  end

  inputs.push([h, w])
end

inputs.each do |h, w|
  (1..h).each do |y|
    puts "#" * w
  end

  puts
end

