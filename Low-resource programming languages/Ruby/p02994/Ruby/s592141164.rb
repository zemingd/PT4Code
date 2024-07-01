N, L = gets.split.map(&:to_i)

apples = []
N.times do | i |
  apples << L + i+1 - 1
end

unless apples.include? 0
  if apples[0] > 0
    apples.shift
  else
    apples.pop
  end
end

sum = 0; apples.each{ |a|  sum+= a }
puts sum