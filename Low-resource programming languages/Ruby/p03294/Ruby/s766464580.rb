def gcd_of_two(a, b)
  small, large = [a, b].sort
  if small == 0
    return large
  else
    gcd_of_two(small, large % small)
  end
end

def gcd_of_many(array)
  current = array.shift
  until array.empty?
    following = array.shift
    current = gcd_of_two(current, following)
  end
  return current
end

def lcm_of_two(a, b)
  gcd = gcd_of_two(a, b)
  return a * b / gcd
end

def lcm_of_many(array)
  current = array.shift
  until array.empty?
    following = array.shift
    current = lcm_of_two(current, following)
  end
  return current
end

n = gets
as = gets.split.map(&:to_i)
lcm = lcm_of_many(as.dup)
puts as.map { |e| (lcm-1)%e }.inject(:+)
