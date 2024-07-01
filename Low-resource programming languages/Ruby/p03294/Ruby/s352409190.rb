
n = gets.strip.to_i


a=gets.strip.split.map(&:to_i)
ans=a.inject(:+)-n

puts ans
