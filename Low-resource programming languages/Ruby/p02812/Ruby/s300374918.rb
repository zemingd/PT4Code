n = gets.to_i
s = gets.chomp

cnt = 0

(n-2).times do |i|
  if s[i..(i+2)] == "ABC"
    cnt += 1
  end
end

puts cnt