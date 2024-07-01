n = gets.to_i
s = gets.strip

if n % 2 != 0
  print 'No'
else
  n.times do |i|
    if s[i] != s[i + n/2]
      print 'No'
      break
    end
    
    if i >= n/2 - 1
      print 'Yes'
      break
    end
  end
end
 