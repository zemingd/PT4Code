def calc_sunuke(as, b)
  sum = 0
    as.length.times{|i|
      sum += (as[i]-(b+i)).abs
    }
  sum
end
n = gets.to_i
as = gets.split.map(&:to_i)

left = 0
right = as.max

while left+1 != right
  middle = (right + left)/2
  if calc_sunuke(as, middle) > calc_sunuke(as, middle+1)
    left = middle
  else
    right = middle
  end
end
puts [calc_sunuke(as, right), calc_sunuke(as, left)].min
