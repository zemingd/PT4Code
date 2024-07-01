n = gets.to_i
a = gets.split.map &:to_i

ans = "APPROVED"
a.each do |e|
  if e.even? && e % 3 != 0 && e % 5 != 0
    ans = "DENIED"
  end
end

puts ans