gets
n = gets.split("\s").map(&:to_i)
result = 1

n.each do |i|
  result *= i
  if result > 10**18 && (! n.include? 0)
    result = -1
    break
  end
end

p result