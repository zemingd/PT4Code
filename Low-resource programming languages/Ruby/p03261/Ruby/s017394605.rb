COUNT = gets.to_i
array = readlines.map(&:chomp)

def run(array)
  check_uniqueness(array) && check_order(array) ? :Yes : :No
end

def check_uniqueness(array)
  array.uniq.size == array.size
end

def check_order(array)
  array.map.with_index(1){|a,idx| a[-1] == array[idx][0] if idx < COUNT}.compact.all?
end

puts run(array)