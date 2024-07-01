_n, x = gets.split.map(&:to_i)
cities = gets.split.map(&:to_i)
distances = cities.map { |city| (city - x).abs }

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

puts gcd_of_many(distances)
