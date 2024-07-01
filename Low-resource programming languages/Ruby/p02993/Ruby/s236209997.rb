xs = $stdin.read.split("")

prev = xs[0]
xs[1..-1].each do |x|
  if prev == x
    puts "Bad"
    exit
  end
  prev = x
end
puts "Good"
