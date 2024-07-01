input = gets.to_i

r = [].fill([0,3,5,7], 0, input.to_s.length).inject(&:product).map do |e|
  e.flatten.join.to_i
end.reject do |num|
  num.to_s.include?('0') || num > input
end.select do |num|
  s = num.to_s
  [3,5,7].map(&:to_s).all? do |i|
    s.include?(i)
  end
end.length

puts r
