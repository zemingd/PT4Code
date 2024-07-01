n = gets.chars
ans = n.map do |i|
  if i == "1"
    i = "9"
  elsif i == "9"
    i = "1"
  end
end
puts ans.join
