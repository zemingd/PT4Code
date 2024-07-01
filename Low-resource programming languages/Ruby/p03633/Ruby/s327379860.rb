a = gets.to_i
T = Array.new
a.times do |i|
  T << gets.to_i
end
puts T.inject{ |a,b| a.lcm(b) }