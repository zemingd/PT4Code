N = gets.chomp.chars
ans = []

N.each do |i|
  if i == "B"
    ans.pop
  else
    ans << i
  end
end

puts ans.join