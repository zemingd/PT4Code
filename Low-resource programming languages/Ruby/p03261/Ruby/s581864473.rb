count = gets.to_i
array = readlines.map(&:chomp)

def run(array)
  check_uniqueness(array) && check_order(array) ? :Yes : :No
end

def check_uniqueness(array)
  array.uniq.size == array.size
end

def check_order(array)
  array.each_cons(2).any?{|a,b| a[-1] == b[0]}
end

puts run(array)