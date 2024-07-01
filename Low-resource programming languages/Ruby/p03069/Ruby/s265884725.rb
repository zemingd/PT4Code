n = gets.to_i
s = gets.chomp.split("")
ri = n
wh = Array.new(n+1)
wh[n] = 0
i = n-1
while i >= 0
  if s[i] == "#"
    ri = i
    wh[i] = wh[i+1] 
  else
    wh[i] = wh[i+1] + 1
  end
  i -= 1
end
if ri < n
  puts wh[ri+1]
else
  puts 0
end