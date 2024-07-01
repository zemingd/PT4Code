s = gets.chomp.split(//)
ans = []
s.each do |e|
  if e == 'B'
    ans.pop
  else
    ans.push e
  end
end

puts ans.join('')




