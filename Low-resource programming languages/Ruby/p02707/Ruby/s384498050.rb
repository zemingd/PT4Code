n = gets.to_i

a = gets.chomp.split(" ").map(&:to_i)

m = Array.new(n){0}

a.each{|e|
  m[e-1] += 1
}

m.each{|f|
  p f
}