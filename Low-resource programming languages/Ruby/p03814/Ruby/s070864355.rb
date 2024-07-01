s = gets.chomp.chars.map(&:to_s)
ans = []
flag = false
s.each do |i|
  if i == "A"
    flag = true
    ans.push(i)
  elsif i == "Z"
    ans.push(i)
    flag = false
  elsif flag == true
    ans.push(i)
  end
end
puts ans.join.size
