s = gets.chomp
put = []
for i in 0..s.length-1
  if s[i] == "0"
    put.push(0)
    elsif s[i] == "1"
    put.push(1)
    elsif s[i] == "B" && put != []
      put.pop
  end
end
puts put.join("")