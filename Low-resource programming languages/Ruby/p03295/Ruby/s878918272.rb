m, n = gets.split.map(&:to_i)
pp = []
n.times { pp << gets.split.map(&:to_i) }

pp.sort_by! { |x| x[1]}

c = 0
b = 0
pp.each { |l, r|
  if l > b
    c += 1
    b = r - 1
  end
}

puts c
