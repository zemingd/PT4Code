s = gets.split('')

ans = []

s.each do |i|
  if i == 'B'
    ans.pop
  else
    ans.push(i)
  end
end

puts ans.join