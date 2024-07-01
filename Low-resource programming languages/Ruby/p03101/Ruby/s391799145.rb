nmc = gets.split(" ").map(&:to_i)
n = nmc[0]
m = nmc[1]
c = nmc[2]

b = gets.split(" ").map(&:to_i)

a = Array.new(n).map{gets.split(" ").map(&:to_i)}
result = 0
a.each do |row|
  sum = c
  row.zip(b).each do |a, b|
    sum += a*b
  end
  result += 1 if(sum > 0)
end

puts result
