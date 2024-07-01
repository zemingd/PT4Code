_n, m = STDIN.gets.split.map(&:to_i)
a = STDIN.gets.split().map(&:to_i)

lcm = a.inject(1) {|lcm, n|
  n.lcm(lcm)
}

if (lcm / 2) > m
  puts 0
  exit
end

t = lcm
s = lcm

while t / 2 <= m
  if (t / 2).odd?
    s = t / 2
    break
  end
  t = t + lcm
end

puts (m / s / 2.0).ceil