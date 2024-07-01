n = gets.to_i
s = gets.chomp.chars
cnt = 0
s.each_cons(3) do |c|
  if c.join == "ABC"
    cnt += 1
  end
end
puts cnt