n, m = gets.split.map(&:to_i)

as = gets.split.map(&:to_i)

as2 = as.map {|a|
  if a.odd?
    puts 0
    exit
  end
  a / 2
}

lcm = as2.inject(1) {|l, a| l.lcm(a) }

puts (m / lcm / 2.0).ceil