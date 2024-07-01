s = gets.split("").map(&:to_i)
k = gets.to_i

s.size.times do |i|
  if i+1 == k || s[i] != 1
    puts s[i]
    exit
  end
end