A, B = gets.split.map(&:to_i)
cnt = 0
A.upto(B) do |n|
    cnt += 1 if n.to_s.chars == n.to_s.chars.reverse
end
puts cnt