n = gets.to_i
ts = n.times.map { gets.to_i }
ans = ts.inject(1) do |lcm, t|
  x = lcm * t
  b, a = [lcm, t].minmax
  r = a % b
  while r != 0
    a = b
    b = r
    r = a % b
  end
  x / b
end

puts ans