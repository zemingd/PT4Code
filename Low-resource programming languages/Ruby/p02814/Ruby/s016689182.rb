_n, m = STDIN.gets.split.map(&:to_i)
a = STDIN.gets.split().map(&:to_i)

lcm = a.inject(1) {|l, n|
  if n.odd?
    puts 0
    exit
  end
  l.lcm(n / 2)
}

if (lcm > m) && lcm.even?
  puts 0
  exit
end

puts (m / lcm / 2.0).ceil