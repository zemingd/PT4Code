attrs = $stdin.read.split("\n")

num = attrs[0]

x_cors = attrs[1].split(' ').map(&:to_i)

min = x_cors.map { |num| num * num }.inject(:+)
pre_min = min + 1
p = 1

while pre_min > min do
  pre_min = min
  min = x_cors.map { |num| num * num }.inject(:+) - 2 * p * x_cors.inject(:+) + x_cors.length * p * p

  # puts "p: #{p}, min: #{min}, pre_min: #{pre_min}"
  p += 1
end

puts pre_min
