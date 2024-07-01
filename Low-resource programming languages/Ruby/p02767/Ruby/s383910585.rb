input_lines = readlines.map(&:chomp)
N = input_lines.shift.to_i
XI = input_lines.shift.split(' ').map(&:to_i)

xn = XI.map do |x|
  (x - N)**2
end

puts xn.sum
