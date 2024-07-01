s = gets.chomp.chars
ans =[]
s.each do |i|
  if i == "0"
    ans.push("0")
  elsif i == "1"
    ans.push("1")
  else i == "B"
    ans.pop
  end
end
puts ans.join
