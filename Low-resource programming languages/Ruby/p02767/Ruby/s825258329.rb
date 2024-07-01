n = gets.to_i
x = gets.split("\s").map(&:to_i)
min = nil

x.max.times do |n_i|
  sum = x.inject(0) { |res, x_i| res + (x_i - n_i)**2 }
  min ||= sum
  min = sum if sum < min
end

p min