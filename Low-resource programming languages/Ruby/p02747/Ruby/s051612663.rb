line = gets.split(' ')

ans = line[0].gsub!(/hi/, '')

if ans.empty?
  p true
else
  p false
end
