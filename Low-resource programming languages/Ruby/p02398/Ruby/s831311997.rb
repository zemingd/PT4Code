a,b,c = gets.split.map(&:to_i)
divisor = []
(1..c).each do |n|
  divisor << n if c % n == 0
end
count = 0
(a..b).each {|n| count += 1 if divisor.include? n}
puts count

