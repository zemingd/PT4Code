gets

def run(array)
  array = convert_into_numerals(array)
  calc_with_coupon(array)
end
 
def convert_into_numerals(str)
  str.map.map(&:chomp).map(&:to_i)
end

def calc_with_coupon(nums)
  puts nums.inject(&:+) - nums.max/2
end

run(readlines)