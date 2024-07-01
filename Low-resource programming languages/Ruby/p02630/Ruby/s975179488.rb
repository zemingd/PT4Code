# require 'pry'

input_lines = readlines.map(&:chomp)

N = input_lines.shift.to_i

As = input_lines.shift.split.map(&:to_i)

Q = input_lines.shift.to_i

BCs = input_lines.shift(Q).map do |line|
  line.split.map(&:to_i)
end

def find_indexes(value)
  As.flat_map.with_index{|e,i| value>=5 ? i : []}
end


def replace_As!(from, to)
  indexes = find_indexes(from)
  indexes.each do |i| 
    As[i] = to
  end
end

ans = BCs.map do |bb, cc|
  replace_As!(bb, cc)
  As.inject(&:+)
end

puts ans