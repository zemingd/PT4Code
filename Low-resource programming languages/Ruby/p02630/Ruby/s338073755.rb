input_lines = readlines.map(&:chomp)

N = input_lines.shift.to_i

As = input_lines.shift.split.map(&:to_i)

Q = input_lines.shift.to_i

BCs = input_lines.shift(Q).map do |line|
  line.split.map(&:to_i)
end


def replace_As!(from, to)
  total = 0
  As.map! do |x| 
    value = if x == from 
      to 
    else
      x
    end
    total += value
    value
  end
  total
end

ans = BCs.map do |bb, cc|
  replace_As!(bb, cc)
end

puts ans