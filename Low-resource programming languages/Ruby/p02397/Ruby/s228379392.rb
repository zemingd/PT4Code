inputs = $stdin.read.split("\n")

inputs.each do |input|
  a, b = input.split(' ').map(&:to_i)
  next if a == 0 && b == 0
  puts a >= b ? "#{b} #{a}" : "#{a} #{b}"
end