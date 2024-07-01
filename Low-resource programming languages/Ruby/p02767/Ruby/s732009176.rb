N = gets.to_i
X = gets.split.map(&:to_i).sort

#N = 100
#X = N.times.map{rand(1..100)}.sort

X_min = X.min
X_max = X.max


min = Float::INFINITY
X_min.upto(X_max) do |pp|
  sum = 0
  X.each do |xx|
    sum += (pp - xx) ** 2
  end
  min = min < sum ? min : sum
end

puts min