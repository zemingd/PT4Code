N = gets.to_i
peoples = gets.split.map(&:to_i)
sum_minus, sum, sum_plus = 0, 0, 0
mid = (peoples.sum / peoples.length)
#mid = (peoples.max + peoples.min) / 2
mid_minus = mid - 1
mid_plus = mid + 1

peoples.each { |p|
  sum_plus += (p - mid_plus) ** 2
  sum_minus += (p - mid_minus) ** 2
  sum += (p - mid) ** 2
}

puts [sum_plus, sum,sum_minus].min