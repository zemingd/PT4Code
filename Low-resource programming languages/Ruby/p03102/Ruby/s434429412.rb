input_lines = readlines.map(&:chomp)
N, M, C = input_lines.shift.split(' ').map(&:to_i)
BB = input_lines.shift.split(' ').map(&:to_i)

result = input_lines[0, N].count do |line|
  aa = line.split(' ')[0, M].map(&:to_i)

  sigma = aa.map.with_index do |a, i|
    a * BB[i]
  end
  sigma << C

  sigma.inject(:+) > 0
end

puts result