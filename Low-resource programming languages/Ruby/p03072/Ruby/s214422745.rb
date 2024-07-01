n = STDIN.gets.chomp.to_i
hi = STDIN.gets.chomp.split(" ").map{ |h| h.to_i }

sum = 0
max = 0

hi.each{ |h|
  if h >= max then
    sum += 1
    max = h
  end
}

p sum