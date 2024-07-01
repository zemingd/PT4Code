n = readline.strip.to_i
as = readline.strip.split.map(&:to_i)
bs = readline.strip.split.map(&:to_i)

cur = 0
prev = 0
0.upto (n - 1) do |i|
  front = [bs[i], as[i] - prev].min
  rest = bs[i] - front
  nextt = [rest, as[i+1]].min
  prev = nextt
  cur = cur + front + nextt
end
puts cur
