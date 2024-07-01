gets
xs = gets.split.map(&:to_i)
avg = xs.inject(0, :+).fdiv(xs.size)

puts [avg.floor, avg.ceil].map { |a|
  xs.inject(0) { |result, x| result + (a - x) ** 2 }
}.min
