_, kind = gets.split.map(&:to_i)
array = gets.split.map(&:to_i)

def array_order(array)
  array.group_by { |v| v }.map { |k, v| [k, v.count] }.sort
end

def result(kind, array)
  num = array_order(array).take(kind).map { |_, v| v }.inject(:+)
  count = array.count
  count - num
end

puts result(kind, array)