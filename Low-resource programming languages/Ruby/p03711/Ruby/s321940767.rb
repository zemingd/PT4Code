N = gets.to_i
car, mid, cdr = gets.split.map(&:to_i).each_slice(N).to_a

car.sort!
car_sum = car.inject(0,:+)
cdr.sort!
cdr_sum = cdr.inject(0,:+)

sums = [0]*(N+1)
sums[0] = car_sum
sums[-1] = -cdr_sum

(0...N).each{|i|
  m = mid[i]
  car_diff = m - car[0]
  if car_diff > 0
    car.shift
    car[car.index{|v|v>m}||N-1,0] = m
    car_sum += car_diff
  end
  sums[i+1] += car_sum

  m = mid[-i-1]
  cdr_diff = cdr[-1] - m
  if cdr_diff > 0
    cdr.pop
    cdr[cdr.index{|v|v>m}||N-1,0] = m
    cdr_sum -= cdr_diff
  end
  sums[-i-2] -= cdr_sum
}
p sums.max
