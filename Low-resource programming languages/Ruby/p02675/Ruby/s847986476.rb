n = gets.strip[-1].to_i
res = nil
if n == 3
  res = 'bon'
elsif [0, 1, 6, 8].delete(n)
  res = 'pon'
else
  res = 'hon'
end
  
puts res