C = 10 ** 18

n = gets.to_i
as = gets.split.map(&:to_i)

if as.include?(0)
  puts 0
  exit
end

result = 1

as.each do |a|
  result *= a
  if result > C
    result = -1
    break
  end
end

puts result