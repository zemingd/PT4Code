s = gets.chomp.split('')

ans = []

s.each do |i|
  if i == 'B'
    ans.delete_at(-1) if ans.size != 0
  else
    ans.push(i)
  end
end

puts ans.join('')