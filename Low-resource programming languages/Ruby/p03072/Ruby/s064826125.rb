n = gets.to_i
h = gets.chomp.split(" ").map(&:to_i);
ans = 0
max = 0
h.each do |i|
  if i >= max 
    ans += 1
    max = i
  end
end
puts ans