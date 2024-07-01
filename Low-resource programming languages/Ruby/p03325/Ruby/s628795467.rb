n = gets.to_i
as = gets.split.map(&:to_i)

ans = 0
as.each do |a|
  if a.even?
    while a.even?
      ans += 1
      a = a / 2
    end
  end
end

puts ans
