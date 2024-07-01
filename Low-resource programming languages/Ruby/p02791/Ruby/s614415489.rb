ARG_N = gets.to_i
ARG_P = gets.split.map(&:to_i)

smallest = 2 * (10**5) + 1
result = 0

ARG_P.each do |x|
  if x <= smallest
    smallest = x
    result+=1
  end
end

puts result