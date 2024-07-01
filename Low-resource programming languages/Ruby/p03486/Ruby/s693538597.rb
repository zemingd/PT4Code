s = gets.chomp.split('').sort
t = gets.chomp.split('').sort {|a, b| b <=> a }
ans = 'No'
if s.join == t.join
  ans = 'No'
elsif t.join.include?(s.join)
  ans = 'Yes'
else
  for i in 0..s.length-1 do
    for j in 0..t.length-1 do
      if s[i] < t[j]
        ans = 'Yes'
        break
      end
    end
  end
end


puts ans