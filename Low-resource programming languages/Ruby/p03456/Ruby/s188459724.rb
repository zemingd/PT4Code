a = gets.strip.split.map(&:to_i)
ans = "No"
(1..(a.join.to_i)).each do |i|
  if i**2 == a.join.to_i
    ans = "Yes"
  end
end
puts ans

