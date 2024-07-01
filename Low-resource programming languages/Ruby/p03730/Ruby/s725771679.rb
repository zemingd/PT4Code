a, b, c = gets.chomp.split.map(&:to_i)
ans = "NO"
b.times do |i|
  if (a*i)%b == c 
    ans ="YES"
    break
  end 
end
puts ans
