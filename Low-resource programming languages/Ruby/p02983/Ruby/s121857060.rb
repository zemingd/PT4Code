l, r = gets.split.map(&:to_i)
min = 2019
(l..r).to_a.map{|i|i%2019}.combination(2).to_a.each do |a,b|
  m = a*b%2019
  min = m if m < min
end
puts min