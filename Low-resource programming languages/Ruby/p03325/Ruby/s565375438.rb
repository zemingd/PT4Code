N = gets.to_i
as = gets.split.map(&:to_i)

ans = 0
as.each do |a|
  while (a % 2).zero?
    ans += 1
    a /= 2
  end
end

puts ans
