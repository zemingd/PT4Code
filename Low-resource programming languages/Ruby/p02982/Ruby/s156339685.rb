require "complex"

N, D = gets.chomp.split.map(&:to_i)
X = N.times.map { gets.chomp.split.map(&:to_f) }

m = Math.sqrt(400.0 ** 2 * 10.0).ceil

ans = 0
X.combination(2) { |y, z|
  sum = 0
  for i in 0..D - 1
    sum += (y[i] - z[i]) ** 2
  end

  #p Math.sqrt(sum)

  for n in 1..m
    if n ** 2 == sum
      ans += 1
      break
    end
  end
}

puts ans
