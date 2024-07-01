expectation = gets.to_s
real = gets.to_s
match = []
3.times do |n|
  if expectation[n] == real[n]
    match << expectation[n]
  end
end

p match.count
