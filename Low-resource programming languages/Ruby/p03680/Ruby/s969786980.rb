n = gets.to_i
as = n.times.map { gets.to_i }
light = 1
cnt = 0
n.times {
  light = as[light-1]
  cnt += 1
  if light == 2
    puts cnt
    exit 0
  end
}
puts -1