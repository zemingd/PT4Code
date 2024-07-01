n = gets.to_i
array = gets.split.map(&:to_i)

m = array.uniq.size

case m
when 1
  if a.first == 0
    puts 'Yes'
    exit
  end
when 2
  x, y = a.uniq.sort
  if x == 0 && array.count(y) == 2 * n / 3 && array.count(x) == n / 3
    puts 'Yes'
    exit
  end

when 3
  x, y, z = array.uniq
  if x ^ y ^ z == 0 &&
     array.count(x) == n / 3 && array.count(y) == n / 3 && array.count(z) == n / 3
    puts 'Yes'
    exit
  end
end

puts 'No'
