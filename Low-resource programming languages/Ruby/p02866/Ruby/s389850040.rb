_n = gets.to_i
d = gets.split.map(&:to_i)
h = d.tally
ans = pred = 1

if d[0] != 0 || h[0] != 1
  puts 0
  exit
end

1.upto(h.values.max) do |i|
  if h[i].nil?
    puts 0
    exit
  end

  ans *= pred**h[i]
  pred = h[i]
end

puts ans