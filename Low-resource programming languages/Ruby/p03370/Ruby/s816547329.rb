n, x = gets.split.map(&:to_i)
m = n.times.map { gets.to_i }.sort!
result = n
sum = 0
m.each {|n| sum += n}
nokori = x - sum

if (nokori) > 0 
  result += nokori / m[0] #必要な材料の最小値で割る
end

puts result

